object frmShaderView: TfrmShaderView
  Left = 0
  Top = 0
  Caption = 'frmShaderView'
  ClientHeight = 897
  ClientWidth = 1244
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  DesignSize = (
    1244
    897)
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 345
    Top = 0
    Width = 8
    Height = 897
    ResizeStyle = rsUpdate
    ExplicitLeft = 185
  end
  object SkSvg1: TSkSvg
    Left = 835
    Top = 736
    Width = 401
    Height = 105
    Anchors = [akRight, akBottom]
    Svg.Source = 
      '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.' +
      'w3.org/1999/xlink" viewBox="0 0 876.38 427.14"><defs><linearGrad' +
      'ient id="a" x1="7.39" y1="223.15" x2="883.77" y2="223.15" gradie' +
      'ntUnits="userSpaceOnUse"><stop offset="0" stop-color="#f37133"/>' +
      '<stop offset="0.18" stop-color="#f06035"/><stop offset="0.44" st' +
      'op-color="#ec4d38"/><stop offset="0.71" stop-color="#ea4239"/><s' +
      'top offset="1" stop-color="#e93e3a"/></linearGradient></defs><pa' +
      'th d="M193.61,223.21q0,39.27-27.94,61.89-27.75,22.61-77.38,22.61' +
      '-45.72,0-80.9-17.46V233.12q28.92,13.09,48.85,18.45,20.13,5.35,36' +
      '.74,5.36,19.93,0,30.48-7.74,10.74-7.74,10.75-23a25.17,25.17,0,0,' +
      '0-4.69-15.07q-4.7-6.75-13.87-12.89-9-6.15-36.93-19.64-26.19-12.5' +
      '-39.28-24A89.9,89.9,0,0,1,18.53,127.8q-7.82-15.27-7.82-35.7,0-38' +
      '.47,25.6-60.5,25.78-22,71.12-22a164.26,164.26,0,0,1,42.4,5.36A28' +
      '8.45,288.45,0,0,1,192.23,30l-19.54,47.8q-22.86-9.53-37.91-13.29a' +
      '118.94,118.94,0,0,0-29.31-3.77q-17.19,0-26.38,8.13T69.91,90.1a27' +
      '.13,27.13,0,0,0,3.71,14.28q3.72,6,11.72,11.7,8.2,5.55,38.49,20.2' +
      '3,40.05,19.44,54.91,39.08Q193.62,194.85,193.61,223.21Zm281.57,80' +
      '.53H406.39L333.73,184.6,306,216.17v87.57H245.39v-290H306V142.46L' +
      '407.18,13.75h67.21L374.74,142.08,357.42,163.3l22.93-12Zm35.95-29' +
      '0v290H571.7v-290Zm307.36,290-20.71-69H693.63l-20.71,69H607.66L70' +
      '8.49,12.56h74.06L883.77,303.74Zm-35.17-120.6Q754.59,89.32,750.88' +
      ',77q-3.51-12.3-5.08-19.44Q739.35,83,708.87,183.14ZM69.42,410.92h' +
      '12.2V387.11h19.84V376.68H81.62V361.14H103V350.67H69.42Zm122.64-3' +
      '0.21q0,15-7.2,23t-20.65,8q-13.44,0-20.65-8t-7.2-23.08q0-15,7.2-2' +
      '3t20.73-7.95q13.49,0,20.61,8T192.06,380.71Zm-42.69,0q0,10.1,3.72' +
      ',15.21T164.21,401q14.85,0,14.84-20.32t-14.76-20.36c-4.93,0-8.66,' +
      '1.72-11.16,5.15S149.37,374,149.37,380.71Zm95.8-3.29h-4V361.14h3.' +
      '76q6,0,8.84,1.81t2.88,6.1c0,2.89-.93,5-2.8,6.35S249.09,377.42,24' +
      '5.17,377.42Zm-4,33.5V387.8h6.6l14,23.12h13.76q-4-5.93-17.2-26.25' +
      'a18.92,18.92,0,0,0,8-6.47,16.47,16.47,0,0,0,2.84-9.48q0-9.11-5.7' +
      '2-13.56t-17.64-4.49h-17v60.25Zm235.69-30.78q0,15.32-8,23.46t-23.' +
      '12,8.15H429.57v-62h17.9q13.95,0,21.68,8T476.86,380.14Zm-12.55.34' +
      'q0-20-16.22-20h-6.44v40.39h5.19Q464.3,400.89,464.31,380.48Zm48.3' +
      '2,31.27h32.83V400.9H524.72v-16H544V374.12h-19.3V360.5h20.74V349.' +
      '72H512.63Zm68.72,0v-62h12.09v51.17h23.12v10.86Zm85.17-32.84h-4V3' +
      '60.5H668c3.3,0,5.71.74,7.25,2.21s2.34,3.75,2.34,6.83-.92,5.39-2.' +
      '77,7S670.24,378.91,666.52,378.91Zm17.54,5.48q5.78-5.31,5.77-15.3' +
      '2,0-9.63-5.42-14.47t-15.75-4.88H650.45v62h12.09V389.69h5.19Q678.' +
      '33,389.69,684.06,384.39Zm87.2,27.36h-12V385H736.63v26.77H724.54v' +
      '-62h12.09V374h22.58V349.72h12Zm38.39-62v62h12.09v-62Zm-493,51.63' +
      'a3.58,3.58,0,0,0,3.95-4,42.3,42.3,0,0,1-.27-8,35.26,35.26,0,0,1,' +
      '54.59-25.49,2.78,2.78,0,0,0,3.2-.08l12.73-9.39a2.13,2.13,0,0,0,0' +
      '-3.41,49.4,49.4,0,0,0-78.92,39.61,49.83,49.83,0,0,0,.83,9,1.77,1' +
      '.77,0,0,0,1.57,1.43ZM309.68,398a1.33,1.33,0,0,1-1.25,1.54,1.75,1' +
      '.75,0,0,1-1.78-1.35,54.28,54.28,0,0,1,88.88-51.58,2.89,2.89,0,0,' +
      '1,.09,4.25,1.37,1.37,0,0,1-1.84.05A51.5,51.5,0,0,0,309.68,398Zm4' +
      '4.13-8.69c.31,0,16.92,2.36,21.78,4.18,4.33,1.63,6.25,5.52,7.33,7' +
      '.72.13.27.25.5.36.71.46.89,1.36,3.21,2.26,5.53h0c.34.88.68,1.75,' +
      '1,2.55a11,11,0,0,0,4.89,6.66c-1.39-5.08-4.85-17.25-6.89-19.87a22' +
      '.79,22.79,0,0,0-5.38-5.26l-.28-.2c-1.27-.92-21.63-4.16-24.74-4.5' +
      '1a5.32,5.32,0,0,0-3.73,1.15,3.84,3.84,0,0,0-1.48,2.6c-.28,2.74.1' +
      '3,4,1.82,5.66,1.23,1.19,7,2.77,10.17,3.62,1.21.33,2.09.57,2.5.72' +
      's1.24.31,2.27.52h0c3.26.66,8.15,1.65,9.79,3.56,1.86,2.18,10,25.2' +
      '5,9.32,26.54-.15.3-.4.8-7.9,1.7-1,.12-5.29.63-7.14.63a2.28,2.28,' +
      '0,0,1-.8-.08c-.35-.18-1-1.06-3.44-4.77-2.06-3.1-4.63-6.95-6.38-9' +
      '.06a31.78,31.78,0,0,0-12.32-8.75c-4.21-1.47-10.82-2.68-15.3-2.15' +
      'a42.59,42.59,0,0,0-4.46.76c.36.88.75,1.75,1.19,2.59q1.7-.15,3.42' +
      '-.15c13.37,0,24.94,6.95,30.56,17.08,1.6,2.33,3.55,5,4.7,6.51a3,3' +
      ',0,0,0,2.61,1.18l17.32-1.42a1.9,1.9,0,0,0,1.68-2.42l-.06-.18c-1.' +
      '32-4.6-4.15-14.4-5-17.17a47.77,47.77,0,0,0-4.35-11.63c-2-3.46-8-' +
      '4.88-14.23-6.37-4.21-1-8.53-2-11.85-3.71a2.37,2.37,0,0,1-.61-.32' +
      ',2.31,2.31,0,0,1,1.36-4.16Zm35.4,7.87c.33,1.68,4.4,15.53,5.63,19' +
      '.7a.72.72,0,0,1-.9.9,11.08,11.08,0,0,1-1.31-.49c-1.19-4.41-5-18.' +
      '16-7.32-21.13a23.5,23.5,0,0,0-5.58-5.46l-.28-.2c-1.67-1.21-23.52' +
      '-4.5-25.21-4.69a6.36,6.36,0,0,0-4.47,1.37,4.77,4.77,0,0,0-1.84,3' +
      '.27c-.32,3,.2,4.61,2.12,6.48,1.3,1.27,5.95,2.61,10.6,3.87,1.15.3' +
      '1,2.05.56,2.42.69a20.53,20.53,0,0,0,2.41.56c2.93.59,7.84,1.58,9.' +
      '26,3.24,2,2.33,8.82,23,9.14,25.4-1.63.67-13,2-14.45,1.82-.38-.4-' +
      '1.74-2.44-3.05-4.41-2.07-3.12-4.66-7-6.44-9.15a32.89,32.89,0,0,0' +
      '-12.76-9.05c-4.33-1.52-11.12-2.76-15.75-2.2a41.29,41.29,0,0,0-4.' +
      '72.81,32.28,32.28,0,0,1,30.21-43.68,31.06,31.06,0,0,1,18.15,5.75' +
      'C384.12,377.48,387.64,389.33,389.21,397.2Z" transform="translate' +
      '(-7.39 -9.58)" fill-rule="evenodd" fill="url(#a)"/></svg>'
    ExplicitLeft = 728
  end
  object LabelFPS: TSkLabel
    Left = 1091
    Top = 816
    Width = 145
    Height = 73
    Anchors = [akRight, akBottom]
    AutoSize = False
    TextSettings.Font.Weight = Bold
    TextSettings.HorzAlign = Center
    Words = <
      item
        Caption = '0.000 FPS'
      end>
    ExplicitLeft = 984
  end
  object SkAnimatedPaintBox1: TSkAnimatedPaintBox
    Left = 353
    Top = 0
    Width = 891
    Height = 897
    Align = alClient
    Enabled = False
    OnMouseMove = SkAnimatedPaintBox1MouseMove
    Duration = 100000.000000000000000000
    OnAnimationDraw = SkAnimatedPaintBox1AnimationDraw
    ExplicitLeft = 359
    ExplicitTop = 1
    ExplicitWidth = 784
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 345
    Height = 897
    Align = alLeft
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 1
      Top = 520
      Width = 343
      Height = 8
      Cursor = crVSplit
      Align = alBottom
      ExplicitLeft = -23
      ExplicitTop = 693
    end
    object Memo1: TMemo
      Left = 1
      Top = 528
      Width = 343
      Height = 368
      Align = alBottom
      Lines.Strings = (
        'Memo1')
      TabOrder = 0
    end
    object pnlTop: TPanel
      Left = 1
      Top = 1
      Width = 343
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      Padding.Left = 8
      Padding.Top = 8
      Padding.Right = 8
      Padding.Bottom = 8
      TabOrder = 1
      ExplicitLeft = 217
      ExplicitTop = 65
      object btnRun: TBitBtn
        AlignWithMargins = True
        Left = 11
        Top = 11
        Width = 75
        Height = 42
        Align = alLeft
        Caption = #9654
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnRunClick
        ExplicitLeft = 15
        ExplicitTop = 12
        ExplicitHeight = 40
      end
      object ckMouse: TCheckBox
        AlignWithMargins = True
        Left = 173
        Top = 11
        Width = 97
        Height = 42
        Align = alLeft
        Caption = 'Mouse'
        TabOrder = 1
        ExplicitLeft = 165
        ExplicitTop = 25
        ExplicitHeight = 17
      end
      object btnLoad: TBitBtn
        AlignWithMargins = True
        Left = 92
        Top = 11
        Width = 75
        Height = 42
        Align = alLeft
        Caption = #55357#56513
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btnLoadClick
        ExplicitLeft = 111
        ExplicitTop = 12
        ExplicitHeight = 40
      end
    end
    object lvShaders: TListView
      Left = 1
      Top = 65
      Width = 343
      Height = 455
      Align = alClient
      Columns = <
        item
          AutoSize = True
        end>
      ReadOnly = True
      RowSelect = True
      TabOrder = 2
      ViewStyle = vsReport
      OnSelectItem = lvShadersSelectItem
      ExplicitLeft = 95
      ExplicitTop = 400
      ExplicitWidth = 250
      ExplicitHeight = 150
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'sksl'
    Filter = 'Skia Shader Language (*.SkSL)|*.sksl|All|*.*'
    Left = 168
    Top = 108
  end
end