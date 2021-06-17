unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.DBCtrls;

type
  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    silbtn: TButton;
    kaydet: TButton;
    guncelle: TButton;
    girisdon: TButton;
    cikis: TButton;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    urunad: TEdit;
    Label3: TLabel;
    fiyat: TEdit;
    Label4: TLabel;
    barkod: TEdit;
    Label5: TLabel;
    adet: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    tarih: TDateTimePicker;
    urunstok: TComboBox;
    id: TEdit;
    saticiliste: TDBLookupComboBox;
    Label8: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure cikisClick(Sender: TObject);
    procedure girisdonClick(Sender: TObject);
    procedure kaydetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure guncelleClick(Sender: TObject);
    procedure silbtnClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}
uses Unit1,Unit2,Unit3;
procedure TForm4.cikisClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm4.ComboBox1Change(Sender: TObject);
begin
adoquery1.Close;
while True do

end;

procedure TForm4.DBGrid1CellClick(Column: TColumn);
begin
urunad.Text := DBGrid1.Fields[1].asstring;
fiyat.Text := DBGrid1.Fields[5].asstring;
barkod.Text := DBGrid1.Fields[3].asstring;
adet.Text := DBGrid1.Fields[6].asstring;
id.Text:=DBGrid1.Fields[0].asstring;
urunstok.Text:=DBGrid1.Fields[2].asstring;
tarih.DateTime:=DBGrid1.Fields[4].AsDateTime;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
urunstok.Items.Add('Var');
adoquery1.Active:=true;
urunstok.Items.Add('Yok');
datasource1.Enabled:=true;
tarih.Format:='dd.MM.yyyy';
tarih.Date:=now;
tarih.Time:=now;
end;

procedure TForm4.girisdonClick(Sender: TObject);
begin
form2.show;
form4.Hide;
end;

procedure TForm4.guncelleClick(Sender: TObject);
begin
adoquery1.Close;
adoquery1.SQL.Text:='update urun set urunad=:urunad, urunstok=:urunstok,atarih=:tarih, urunbarkod=:barkod, fiyat=:fiyat, urunadet=:adet,saticiad=:saticiliste where urun_id=:id';
adoquery1.Parameters.ParamByName('urunad').Value:=urunad.Text;
adoquery1.Parameters.ParamByName('barkod').Value:=barkod.Text;
adoquery1.Parameters.ParamByName('adet').Value:=adet.Text;
adoquery1.Parameters.ParamByName('fiyat').Value:=fiyat.Text;
adoquery1.Parameters.ParamByName('id').Value:=id.Text;
adoquery1.Parameters.ParamByName('tarih').Value:=tarih.DateTime;
adoquery1.Parameters.ParamByName('urunstok').Value:=urunstok.Text;
adoquery1.Parameters.ParamByName('saticiliste').Value:=saticiliste.Text;
adoquery1.ExecSQL;
showmessage('Güncellendi');
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

procedure TForm4.kaydetClick(Sender: TObject);
begin
adoquery1.Close;
adoquery1.SQL.Text:='insert into urun (urunad,urunstok,urunbarkod,atarih,fiyat,urunadet,saticiad)values(:urunad,:urunstok,:barkod,:tarih,:fiyat,:adet,:saticiliste)';
adoquery1.Parameters.ParamByName('urunad').Value:=urunad.Text;
adoquery1.Parameters.ParamByName('urunstok').Value:=urunstok.Text;
adoquery1.Parameters.ParamByName('barkod').Value:=barkod.Text;
adoquery1.Parameters.ParamByName('tarih').Value:=tarih.DateTime;
adoquery1.Parameters.ParamByName('adet').Value:=adet.Text;
adoquery1.Parameters.ParamByName('fiyat').Value:=fiyat.Text;
adoquery1.Parameters.ParamByName('saticiliste').Value:=saticiliste.Text;
adoquery1.ExecSQL;
adoquery1.Close;
showmessage('Kaydedildi');
adoquery1.Close;
adoquery1.SQL.Clear;
adoquery1.SQL.Text:='select * from urun';
adoquery1.Open;
urunad.Text:='';
urunstok.Text:='';
barkod.Text:='';
adet.Text:='';
fiyat.Text:='';
id.Text:='';
tarih.DateTime:=now;
end;

procedure TForm4.silbtnClick(Sender: TObject);
begin
adoquery1.Close;
adoquery1.SQL.Text:='delete from urun where urun_id=:id';
adoquery1.Parameters.ParamByName('id').Value:=id.text;
adoquery1.ExecSQL;
showmessage('Baþarýyla Silindi.');
adoquery1.Close;
adoquery1.SQL.Clear;
adoquery1.SQL.Text:='select * from urun';
adoquery1.Open;
urunad.Text:='';
fiyat.Text:='';
barkod.Text:='';
adet.Text:='';
id.Text:='';
urunstok.Text:='';
end;

procedure TForm4.Timer1Timer(Sender: TObject);
begin
edit1.Text:=Timetostr(time);
end;

end.
