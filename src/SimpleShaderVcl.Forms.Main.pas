unit SimpleShaderVcl.Forms.Main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Math,
  System.IOUtils,
  System.Types,
  System.DateUtils,
  System.Generics.Defaults,
  System.Generics.Collections,
  System.Diagnostics,

  Skia,
  Skia.Vcl,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.ComCtrls;

type
  TfrmShaderView = class(TForm)
    pnlLeft: TPanel;
    Splitter1: TSplitter;
    SkAnimatedPaintBox1: TSkAnimatedPaintBox;
    Memo1: TMemo;
    pnlTop: TPanel;
    btnRun: TBitBtn;
    ckMouse: TCheckBox;
    Splitter2: TSplitter;
    SkSvg1: TSkSvg;
    btnLoad: TBitBtn;
    OpenDialog1: TOpenDialog;
    LabelFPS: TSkLabel;
    lvShaders: TListView;
    procedure FormCreate(Sender: TObject);
    procedure SkAnimatedPaintBox1AnimationDraw(ASender: TObject; const ACanvas: ISkCanvas; const ADest: TRectF; const AProgress: Double; const AOpacity: Single);
    procedure SkAnimatedPaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure btnRunClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure lvShadersSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
  private
    FEffect: ISkRuntimeEffect;
    FPaint: ISkPaint;
    FPaintCount: Int64;
    FstopWatch: TStopwatch;
    procedure RunShader;
    procedure LoadShaders;
    procedure LoadShader(const AShaderFile: string);
  public
  end;

var
  frmShaderView: TfrmShaderView;

implementation

{$R *.dfm}
const
  ShaderExt = '.sksl';

function ShaderPath: string;
begin
  {$IFDEF MSWINDOWS}
  Result := TPath.GetFullPath('..\..\..\Shaders\');
  {$ELSEIF DEFINED(IOS) or DEFINED(ANDROID)}
  Result := TPath.GetDocumentsPath;
  {$ELSEIF defined(MACOS)}
  Result := TPath.GetFullPath('../Resources/');
  {$ELSE}
  Result := ExtractFilePath(ParamStr(0));
  {$ENDIF}
  if (Result <> '') and not Result.EndsWith(PathDelim) then
    Result := Result + PathDelim;
end;

function MediaPath: string;
begin
  {$IFDEF MSWINDOWS}
  Result := TPath.GetFullPath('..\..\..\media\');
  {$ELSEIF DEFINED(IOS) or DEFINED(ANDROID)}
  Result := TPath.Combine(TPath.GetDocumentsPath, 'media');
  {$ELSEIF defined(MACOS)}
  Result := TPath.Combine(TPath.GetFullPath('../Resources/'), 'media');
  {$ELSE}
  Result := TPath.Combine(ExtractFilePath(ParamStr(0)), 'media');
  {$ENDIF}
  if (Result <> '') and not Result.EndsWith(PathDelim) then
    Result := Result + PathDelim;
end;

function MediaTexturesPath: string;
begin
  Result := TPath.Combine(MediaPath, 'textures');
end;

procedure TfrmShaderView.RunShader;
begin
  SkAnimatedPaintBox1.Enabled := False;
  FEffect := nil;
  FPaint := nil;
  var AErrorText := '';
  FEffect := TSkRuntimeEffect.MakeForShader(Memo1.Text, AErrorText);
  if AErrorText <> '' then
    raise Exception.Create(AErrorText);

  if FEffect.ChildExists('iImage1') then
  begin
    var image1: ISkImage := TSkImage.MakeFromEncodedFile(
      TPath.Combine(MediaTexturesPath, '8de3a3924cb95bd0e95a443fff0326c869f9d4979cd1d5b6e94e2a01f5be53e9.jpg'));

    if Assigned(image1) then
    begin
      FEffect.ChildrenShaders['iImage1'] := image1.MakeShader(TSKSamplingOptions.High);
      if FEffect.UniformExists('iImage1Resolution') then
        case FEffect.UniformType['iImage1Resolution'] of
          TSkRuntimeEffectUniformType.Float2:
              FEffect.SetUniform('iImage1Resolution', [image1.Width, image1.Height]);
          TSkRuntimeEffectUniformType.Float3:
              FEffect.SetUniform('iImage1Resolution', [image1.Width, image1.Height, 0]);
        end;
    end;
  end;

  FPaint := TSkPaint.Create;
  FPaint.Shader := FEffect.MakeShader(True);
  SkAnimatedPaintBox1.Enabled := True;
end;

procedure TfrmShaderView.SkAnimatedPaintBox1AnimationDraw(ASender: TObject;
  const ACanvas: ISkCanvas; const ADest: TRectF; const AProgress: Double;
  const AOpacity: Single);
begin
  if Assigned(FEffect) and Assigned(FPaint) then
  begin
    if FEffect.UniformExists('iResolution') then
    begin
      if FEffect.UniformType['iResolution'] = TSkRuntimeEffectUniformType.Float3 then
        FEffect.SetUniform('iResolution', [ADest.Width, ADest.Height, 0])
      else
        FEffect.SetUniform('iResolution', PointF(ADest.Width, ADest.Height));
    end;
    if FEffect.UniformExists('iTime') then
      FEffect.SetUniform('iTime', AProgress * SkAnimatedPaintBox1.Duration );
    ACanvas.DrawRect(ADest, FPaint);
  end;

  if FPaintCount = 0 then
    FstopWatch := TStopwatch.StartNew;

  inc(FPaintCount);
  var LFps := FPaintCount / FstopWatch.Elapsed.Seconds;
  LabelFPS.Caption := Format('%3.1f fps', [LFps]);


end;


procedure TfrmShaderView.SkAnimatedPaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if ckMouse.Checked and FEffect.UniformExists('iMouse') then
    FEffect.SetUniform('iMouse', [X, Y, 0, IfThen(ssLeft in Shift, 1, 0)]);
end;


procedure TfrmShaderView.btnRunClick(Sender: TObject);
begin
  RunShader;
end;

procedure TfrmShaderView.LoadShader(const AShaderFile: string);
begin
  FPaintCount := 0;
  Memo1.Lines.LoadFromFile(AShaderFile);
  Memo1.Lines.Text := Memo1.Lines.Text.Replace(#9, #32);
  RunShader;
end;

procedure TfrmShaderView.btnLoadClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    LoadShader(OpenDialog1.FileName);
  end;
end;

procedure TfrmShaderView.FormCreate(Sender: TObject);
begin
  LoadShaders;
end;

procedure TfrmShaderView.lvShadersSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
begin
  LoadShader(TPath.Combine(ShaderPath,Item.Caption+ShaderExt));
end;

procedure TfrmShaderView.LoadShaders;
begin
  if not TDirectory.Exists(ShaderPath) then
  begin
    lvShaders.Visible := False;
    Splitter2.Visible := False;
    exit;
  end;

  var Shaders := TDirectory.GetFiles(ShaderPath, '*' + ShaderExt);
  TArray.Sort<string>(Shaders, TStringComparer.Ordinal);

  for var shader in Shaders do
  begin
    const item = lvShaders.Items.Add;
    item.Caption := TPath.GetFileNameWithoutExtension(Shader);
  end;

  if lvShaders.Items.Count > 0 then
  begin
    lvShaders.ItemIndex := random(lvShaders.Items.Count);
    LoadShader(TPath.Combine(ShaderPath,lvShaders.Items[lvShaders.ItemIndex].Caption+ShaderExt));
  end;
end;

end.
