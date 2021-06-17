object Form5: TForm5
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Stok Durumu'
  ClientHeight = 365
  ClientWidth = 585
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
    Left = 22
    Top = 8
    Width = 208
    Height = 13
    Caption = #220'r'#252'n Ad'#305'na g'#246're arama yapabilirsiniz'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 22
    Top = 30
    Width = 44
    Height = 13
    Caption = 'Arama :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 361
    Top = 11
    Width = 32
    Height = 13
    Caption = 'Saat :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 65
    Width = 569
    Height = 282
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
        Width = 62
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
      end>
  end
  object arama: TEdit
    Left = 72
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 1
    OnChange = aramaChange
    OnEnter = aramaEnter
  end
  object cikis: TButton
    Left = 502
    Top = 34
    Width = 75
    Height = 25
    Caption = #199#305'k'#305#351
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = cikisClick
  end
  object Button1: TButton
    Left = 502
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Geri D'#246'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 399
    Top = 8
    Width = 97
    Height = 21
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from urun')
    Left = 320
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Enabled = False
    Left = 288
    Top = 24
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 256
    Top = 24
  end
end
