object Form8: TForm8
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Form8'
  ClientHeight = 351
  ClientWidth = 388
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 72
    Width = 69
    Height = 16
    Caption = 'Sat'#305'c'#305' Ad'#305' :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 123
    Top = 8
    Width = 127
    Height = 24
    Caption = 'SATICI EKLE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object satici: TEdit
    Left = 107
    Top = 66
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object ekle: TButton
    Left = 253
    Top = 67
    Width = 99
    Height = 28
    Caption = 'Ekle'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = ekleClick
  end
  object sil: TButton
    Left = 253
    Top = 101
    Width = 99
    Height = 28
    Caption = 'Sil'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = silClick
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 152
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'saticiid'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'saticiad'
        Width = 60
        Visible = True
      end>
  end
  object id: TEdit
    Left = 3
    Top = 332
    Width = 121
    Height = 21
    TabOrder = 4
    Visible = False
  end
  object Button1: TButton
    Left = 148
    Top = 278
    Width = 99
    Height = 28
    Caption = 'Geri D'#246'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 253
    Top = 278
    Width = 99
    Height = 28
    Caption = #199#305'k'#305#351
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Button2Click
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from satici')
    Left = 160
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Enabled = False
    Left = 88
    Top = 104
  end
end
