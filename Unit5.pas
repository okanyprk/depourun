unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm5 = class(TForm)
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    arama: TEdit;
    DataSource1: TDataSource;
    cikis: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Timer1: TTimer;
    Label3: TLabel;
    procedure aramaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cikisClick(Sender: TObject);
    procedure aramaEnter(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}
uses Unit1,Unit2,Unit3,Unit4;
procedure TForm5.aramaChange(Sender: TObject);
begin
if  arama.Text<> '' then
begin
    ADOQuery1.Filter := 'urunad like '+QuotedStr(arama.Text+'%');
    ADOQuery1.Filtered := true;
end
else
begin
  adoquery1.Filtered:=false;
end;
end;

procedure TForm5.aramaEnter(Sender: TObject);
begin
    adoquery1.Filtered:=true;

end;

procedure TForm5.Button1Click(Sender: TObject);
begin
form2.Show;
form5.hide;
end;

procedure TForm5.cikisClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
datasource1.Enabled:=true;
adoquery1.Active:=true;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
adoquery1.Close;
adoquery1.SQL.Clear;
adoquery1.SQL.Text:='select * from urun';
adoquery1.Open;
end;

procedure TForm5.Timer1Timer(Sender: TObject);
begin
edit1.Text:=Timetostr(time);
end;

end.
