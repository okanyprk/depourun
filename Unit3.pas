unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TForm3 = class(TForm)
    kadi: TEdit;
    sifre: TEdit;
    mail: TEdit;
    tel: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    kayit: TButton;
    girisdon: TButton;
    cikis: TButton;
    ADOQuery1: TADOQuery;
    Label5: TLabel;
    Image1: TImage;
    procedure kayitClick(Sender: TObject);
    procedure girisdonClick(Sender: TObject);
    procedure cikisClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}
uses Unit1,Unit2;
procedure TForm3.cikisClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
adoquery1.Active:=true;
end;

procedure TForm3.girisdonClick(Sender: TObject);
begin
form1.Show;
form3.Hide;
end;

procedure TForm3.kayitClick(Sender: TObject);
begin
adoquery1.Close;
adoquery1.SQL.Text:='insert into kullanici (kad,sifre,mail,tel)values(:kadi,:sifre,:mail,:tel)';
adoquery1.Parameters.ParamByName('kadi').Value:=kadi.Text;
adoquery1.Parameters.ParamByName('sifre').Value:=sifre.Text;
adoquery1.Parameters.ParamByName('mail').Value:=mail.Text;
adoquery1.Parameters.ParamByName('tel').Value:=tel.Text;
adoquery1.ExecSQL;
showmessage('Baþarý ile Kayýt Oldunuz.');
kadi.Text:='';
sifre.Text:='';
mail.Text:='';
tel.Text:='';
form1.Show;
form3.Hide;
end;

end.
