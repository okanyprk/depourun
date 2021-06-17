unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    giris: TButton;
    kadi: TEdit;
    sifre: TEdit;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    cikis: TButton;
    kayit: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    procedure girisClick(Sender: TObject);
    procedure cikisClick(Sender: TObject);
    procedure kayitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses Unit2,Unit3,Unit4,Unit5,Unit6,Unit7,Unit8,Unit9;

procedure TForm1.cikisClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.girisClick(Sender: TObject);
begin
adoquery1.close;
adoquery1.sql.Text:='select * from kullanici where kad='+#39+kadi.Text+#39+'and sifre='+#39+sifre.Text+#39;
adoquery1.Open;

if adoquery1.RecordCount>0 then
begin
form2.show;
form1.visible:=false;
kadi.Text:='';
sifre.Text:='';
end
else
begin
showmessage('hatalý giriþ');
kadi.Text:='';
sifre.Text:='';
end;
end;

procedure TForm1.kayitClick(Sender: TObject);
begin
form3.show;
form1.Visible:=false;
end;

end.
