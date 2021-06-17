unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TForm7 = class(TForm)
    urunad: TEdit;
    barkod: TEdit;
    fiyat: TEdit;
    adet: TEdit;
    id: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    tarih: TDateTimePicker;
    Label5: TLabel;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    sil: TButton;
    guncelle: TButton;
    geri: TButton;
    cikis: TButton;
    Label6: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    Timer1: TTimer;
    urunstok: TComboBox;
    aliciadi: TDBLookupComboBox;
    Label8: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure geriClick(Sender: TObject);
    procedure cikisClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure guncelleClick(Sender: TObject);
    procedure silClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}
uses Unit1,Unit2,Unit3,Unit4,Unit5,Unit6,Unit8,Unit9;
procedure TForm7.cikisClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm7.DBGrid1CellClick(Column: TColumn);
begin
urunad.Text := DBGrid1.Fields[1].asstring;
fiyat.Text := DBGrid1.Fields[6].asstring;
barkod.Text := DBGrid1.Fields[3].asstring;
adet.Text := DBGrid1.Fields[7].asstring;
id.Text:=DBGrid1.Fields[0].asstring;
urunstok.Text:=DBGrid1.Fields[2].asstring;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
urunstok.Items.Add('Var');
urunstok.Items.Add('Yok');
datasource1.Enabled:=true;
adoquery1.Active:=true;
tarih.Date:=now;
tarih.Time:=now;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
adoquery1.Close;
adoquery1.SQL.Clear;
adoquery1.SQL.Text:='select * from urun';
adoquery1.Open;
end;

procedure TForm7.geriClick(Sender: TObject);
begin
form2.show;
form7.Hide;
end;

procedure TForm7.guncelleClick(Sender: TObject);
begin
adoquery1.Close;
adoquery1.SQL.Text:='update urun set sfiyat=:fiyat, surunadet=:adet,starih=:tarih,aliciad=:aliciadi where urun_id=:id';
adoquery1.Parameters.ParamByName('adet').Value:=adet.Text;
adoquery1.Parameters.ParamByName('fiyat').Value:=fiyat.Text;
adoquery1.Parameters.ParamByName('id').Value:=id.Text;
adoquery1.Parameters.ParamByName('tarih').Value:=tarih.DateTime;
adoquery1.Parameters.ParamByName('aliciadi').Value:=aliciadi.Text;
adoquery1.ExecSQL;
showmessage('Satýþ Yapýldý');
urunad.Text:='';
barkod.Text:='';
urunstok.Text:='';
adet.Text:='';
fiyat.Text:='';
id.Text:='';
tarih.DateTime:=now;
adoquery1.Close;
adoquery1.SQL.Clear;
adoquery1.SQL.Text:='select * from urun';
adoquery1.Open;
end;

procedure TForm7.silClick(Sender: TObject);
begin
adoquery1.Close;
adoquery1.SQL.Text:='update urun set sfiyat=:"", surunadet=:"",starih=:"",aliciad=:"" where urun_id=:id';
adoquery1.Parameters.ParamByName('id').Value:=id.Text;
adoquery1.ExecSQL;
showmessage('Satýþ Geri Alýndý');
urunad.Text:='';
barkod.Text:='';
urunstok.Text:='';
adet.Text:='';
fiyat.Text:='';
id.Text:='';
tarih.DateTime:=now;
adoquery1.Close;
adoquery1.SQL.Clear;
adoquery1.SQL.Text:='select * from urun';
adoquery1.Open;

end;

procedure TForm7.Timer1Timer(Sender: TObject);
begin
edit1.Text:=Timetostr(time);
end;

end.
