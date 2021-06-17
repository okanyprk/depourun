object Form7: TForm7
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Sat'#305#351' '#304#351'lemleri'
  ClientHeight = 430
  ClientWidth = 602
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
    Left = 24
    Top = 59
    Width = 55
    Height = 16
    Caption = #220'r'#252'n Ad'#305
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 168
    Top = 59
    Width = 70
    Height = 16
    Caption = 'Sat'#305#351' Fiyat'#305
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 168
    Top = 120
    Width = 71
    Height = 16
    Caption = 'Sat'#305#351' Adeti'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 120
    Width = 65
    Height = 16
    Caption = 'Barkod No'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 320
    Top = 59
    Width = 77
    Height = 16
    Caption = 'Sat'#305'l'#305#351' Tarihi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 24
    Top = 21
    Width = 145
    Height = 24
    Caption = 'Sat'#305#351' '#304#351'lemleri'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 411
    Top = 22
    Width = 39
    Height = 16
    Caption = 'Saat :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 24
    Top = 180
    Width = 51
    Height = 16
    Caption = 'Al'#305'c'#305' Ad'#305
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object urunad: TEdit
    Left = 24
    Top = 82
    Width = 121
    Height = 32
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object barkod: TEdit
    Left = 24
    Top = 142
    Width = 121
    Height = 32
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object fiyat: TEdit
    Left = 168
    Top = 81
    Width = 121
    Height = 33
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    NumbersOnly = True
    ParentFont = False
    TabOrder = 2
  end
  object adet: TEdit
    Left = 168
    Top = 142
    Width = 121
    Height = 32
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    NumbersOnly = True
    ParentFont = False
    TabOrder = 3
  end
  object id: TEdit
    Left = 328
    Top = 197
    Width = 120
    Height = 21
    TabOrder = 4
    Visible = False
  end
  object tarih: TDateTimePicker
    Left = 319
    Top = 77
    Width = 121
    Height = 29
    Date = 44347.000000000000000000
    Format = 'dd.MM.yyyy'
    Time = 0.710320856480393600
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 248
    Width = 581
    Height = 166
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'urun_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'urunad'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'urunstok'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'urunbarkod'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'urunadet'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'starih'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sfiyat'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'surunadet'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'aliciad'
        Width = 60
        Visible = True
      end>
  end
  object sil: TButton
    Left = 472
    Top = 92
    Width = 105
    Height = 32
    Caption = 'Sat'#305#351#305' Geri Al'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = silClick
  end
  object guncelle: TButton
    Left = 472
    Top = 54
    Width = 105
    Height = 32
    Caption = 'Sat'#305#351' Yap'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = guncelleClick
  end
  object geri: TButton
    Left = 472
    Top = 130
    Width = 105
    Height = 32
    Caption = 'Geri D'#246'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = geriClick
  end
  object cikis: TButton
    Left = 472
    Top = 168
    Width = 105
    Height = 32
    Caption = #199#305'k'#305#351
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = cikisClick
  end
  object Edit1: TEdit
    Left = 456
    Top = 21
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
    TabOrder = 11
  end
  object urunstok: TComboBox
    Left = 319
    Top = 142
    Width = 129
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
  object aliciadi: TDBLookupComboBox
    Left = 24
    Top = 202
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'aliciad'
    ListField = 'aliciad'
    ListSource = Form9.DataSource1
    ParentFont = False
    TabOrder = 13
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from urun')
    Left = 216
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Enabled = False
    Left = 296
    Top = 8
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 368
    Top = 16
  end
end
