object Form4: TForm4
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Al'#305#351' '#304#351'lemleri'
  ClientHeight = 446
  ClientWidth = 588
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 292
    Width = 557
    Height = 146
    Color = clSkyBlue
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
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
        FieldName = 'atarih'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fiyat'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'urunadet'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'saticiad'
        Width = 70
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 561
    Height = 265
    Caption = 'Al'#305#351' '#304#351'lemler'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 392
      Top = 13
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
    object Label2: TLabel
      Left = 11
      Top = 39
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
    object Label3: TLabel
      Left = 168
      Top = 39
      Width = 31
      Height = 16
      Caption = 'Fiyat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 11
      Top = 122
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
      Left = 167
      Top = 122
      Width = 32
      Height = 16
      Caption = 'Adet'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 320
      Top = 39
      Width = 73
      Height = 16
      Caption = 'Al'#305'n'#305#351' Tarihi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 320
      Top = 122
      Width = 83
      Height = 16
      Caption = 'Stok Durumu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 11
      Top = 195
      Width = 60
      Height = 16
      Caption = 'Sat'#305'c'#305' Ad'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 437
      Top = 12
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
      TabOrder = 0
    end
    object silbtn: TButton
      Left = 455
      Top = 91
      Width = 103
      Height = 35
      Caption = 'Sil'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = silbtnClick
    end
    object kaydet: TButton
      Left = 455
      Top = 50
      Width = 103
      Height = 35
      Caption = 'Kaydet'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = kaydetClick
    end
    object guncelle: TButton
      Left = 455
      Top = 132
      Width = 103
      Height = 35
      Caption = 'G'#252'ncelle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = guncelleClick
    end
    object girisdon: TButton
      Left = 455
      Top = 173
      Width = 103
      Height = 35
      Caption = 'Men'#252'ye D'#246'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = girisdonClick
    end
    object cikis: TButton
      Left = 455
      Top = 214
      Width = 102
      Height = 35
      Caption = #199#305'k'#305#351
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = cikisClick
    end
    object urunad: TEdit
      Left = 11
      Top = 61
      Width = 121
      Height = 32
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object fiyat: TEdit
      Left = 167
      Top = 61
      Width = 121
      Height = 32
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumbersOnly = True
      ParentFont = False
      TabOrder = 7
    end
    object barkod: TEdit
      Left = 11
      Top = 144
      Width = 121
      Height = 32
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumbersOnly = True
      ParentFont = False
      TabOrder = 8
    end
    object adet: TEdit
      Left = 167
      Top = 144
      Width = 121
      Height = 32
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumbersOnly = True
      ParentFont = False
      TabOrder = 9
    end
    object tarih: TDateTimePicker
      Left = 320
      Top = 61
      Width = 121
      Height = 32
      Date = 44347.000000000000000000
      Format = 'dd.MM.yyyy'
      Time = 0.847186631945078300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object urunstok: TComboBox
      Left = 320
      Top = 144
      Width = 121
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object id: TEdit
      Left = 320
      Top = 193
      Width = 121
      Height = 32
      TabOrder = 12
      Visible = False
    end
    object saticiliste: TDBLookupComboBox
      Left = 11
      Top = 217
      Width = 121
      Height = 32
      KeyField = 'saticiad'
      ListField = 'saticiad'
      ListSource = Form8.DataSource1
      TabOrder = 13
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from urun')
    Left = 456
    Top = 397
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Enabled = False
    Left = 504
    Top = 397
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 544
    Top = 8
  end
end
