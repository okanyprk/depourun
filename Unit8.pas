unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls;

type
  TForm8 = class(TForm)
    satici: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ekle: TButton;
    sil: TButton;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    id: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ekleClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure silClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}
uses Unit1,Unit2,Unit3,Unit4,Unit5,Unit6,Unit7;
procedure TForm8.Button1Click(Sender: TObject);
begin
form2.show;
form8.Hide;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm8.DBGrid1CellClick(Column: TColumn);
begin
satici.Text := DBGrid1.Fields[1].asstring;
id.Text:=DBGrid1.Fields[0].asstring;
end;

procedure TForm8.ekleClick(Sender: TObject);
begin
adoquery1.Close;
adoquery1.SQL.Text:='insert into satici(saticiad)values(:satici)';
adoquery1.Parameters.ParamByName('satici').Value:=satici.Text;
adoquery1.ExecSQL;
adoquery1.Close;
showmessage('Kaydedildi');
adoquery1.Close;
adoquery1.SQL.Clear;
adoquery1.SQL.Text:='select * from satici';
adoquery1.Open;
satici.Text:='';
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
datasource1.Enabled:=true;
adoquery1.Active:=true;
end;

procedure TForm8.silClick(Sender: TObject);
begin
adoquery1.Close;
adoquery1.SQL.Text:='delete from satici where saticiid=:id';
adoquery1.Parameters.ParamByName('id').Value:=id.text;
adoquery1.ExecSQL;
showmessage('Baþarýyla Silindi.');
adoquery1.Close;
adoquery1.SQL.Clear;
adoquery1.SQL.Text:='select * from satici';
adoquery1.Open;
id.Text:='';
satici.Text:='';
end;

end.
