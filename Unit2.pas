unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    girisdon: TButton;
    cikis: TButton;
    Image1: TImage;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Timer1: TTimer;
    Image2: TImage;
    Label1: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cikisClick(Sender: TObject);
    procedure girisdonClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
uses Unit1,Unit3,Unit4,Unit5,Unit6,Unit7,Unit8,Unit9;
procedure TForm2.Button1Click(Sender: TObject);
begin
form4.show;
form2.hide;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
form7.Show;
form2.Hide;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
form5.Show;
form2.Visible:=false;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
form6.Show;
form2.Hide;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
form8.show;
form2.Hide;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
form9.Show;
form2.Hide;
end;

procedure TForm2.cikisClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TForm2.girisdonClick(Sender: TObject);
begin
form1.Show;
form2.visible:=false;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
edit1.Text:=Timetostr(time);
end;

end.
