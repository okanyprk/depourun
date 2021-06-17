object Form6: TForm6
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Kullan'#305'c'#305'lar'
  ClientHeight = 290
  ClientWidth = 575
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 95
    Height = 21
    Caption = 'Kullan'#305'c'#305'lar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 177
    Top = 8
    Width = 49
    Height = 21
    Caption = 'Saat :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 44
    Width = 559
    Height = 238
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kullanici_id'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kad'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tel'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mail'
        Width = 259
        Visible = True
      end>
  end
  object saat: TEdit
    Left = 232
    Top = 8
    Width = 121
    Height = 21
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object Button1: TButton
    Left = 368
    Top = 8
    Width = 97
    Height = 30
    Caption = 'Geri D'#246'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 471
    Top = 8
    Width = 97
    Height = 30
    Caption = #199#305'k'#305#351
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from kullanici')
    Left = 344
    Top = 256
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 392
    Top = 256
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 144
  end
end
