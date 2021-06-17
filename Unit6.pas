unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    saat: TEdit;
    Label2: TLabel;
    Timer1: TTimer;
    Button1: TButton;
    Button2: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}
uses Unit1,Unit2,Unit3,Unit4,Unit5;
procedure TForm6.Button1Click(Sender: TObject);
begin
form2.show;
form6.Hide;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
adoquery1.Active:=true;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
adoquery1.Close;
adoquery1.SQL.Clear;
adoquery1.SQL.Text:='select * from kullanici';
adoquery1.Open;
end;

procedure TForm6.Timer1Timer(Sender: TObject);
begin
saat.Text:=Timetostr(time);
end;

end.
