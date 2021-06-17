unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB;

type
  TForm9 = class(TForm)
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    ekle: TButton;
    alici: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    sil: TButton;
    Button3: TButton;
    Button4: TButton;
    id: TEdit;
    procedure Button4Click(Sender: TObject);
    procedure ekleClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure silClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}
uses Unit1,Unit2,Unit3,Unit4,Unit5,Unit6,Unit7;

procedure TForm9.Button3Click(Sender: TObject);
begin
form2.Show;
form9.Hide;
end;

procedure TForm9.Button4Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm9.DBGrid1CellClick(Column: TColumn);
begin
alici.Text := DBGrid1.Fields[1].asstring;
id.Text:=DBGrid1.Fields[0].asstring;
end;

procedure TForm9.ekleClick(Sender: TObject);
begin
adoquery1.Close;
adoquery1.SQL.Text:='insert into alici(aliciad)values(:alici)';
adoquery1.Parameters.ParamByName('alici').Value:=alici.Text;
adoquery1.ExecSQL;
adoquery1.Close;
showmessage('Kaydedildi');
adoquery1.Close;
adoquery1.SQL.Clear;
adoquery1.SQL.Text:='select * from alici';
adoquery1.Open;
alici.Text:='';
end;

procedure TForm9.FormCreate(Sender: TObject);
begin
datasource1.Enabled:=true;
adoquery1.Active:=true;
end;

procedure TForm9.silClick(Sender: TObject);
begin
adoquery1.Close;
adoquery1.SQL.Text:='delete from alici where aliciid=:id';
adoquery1.Parameters.ParamByName('id').Value:=id.text;
adoquery1.ExecSQL;
showmessage('Baþarýyla Silindi.');
adoquery1.Close;
adoquery1.SQL.Clear;
adoquery1.SQL.Text:='select * from alici';
adoquery1.Open;
id.Text:='';
alici.Text:='';
end;

end.
