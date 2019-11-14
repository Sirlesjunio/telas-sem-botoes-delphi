unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.ListBox, FMX.MultiView, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    Button1: TButton;
    MultiView1: TMultiView;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    ListBoxItem3: TListBoxItem;
    edtLado1_layout1: TEdit;
    edtLado2_layout1: TEdit;
    edtLado3_layout1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    procedure ListBoxItem1Click(Sender: TObject);
    procedure ListBoxItem2Click(Sender: TObject);
    procedure ListBoxItem3Click(Sender: TObject);
    procedure Layout1Click(Sender: TObject);
    procedure Layout3Click(Sender: TObject);
    

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a, b, c: Double;


implementation

{$R *.fmx}


procedure TForm1.Layout1Click(Sender: TObject);
begin
  a:= StrToFloat(edtLado1_layout1.Text);
  b:= StrToFloat(edtLado2_layout1.Text);
  c:= StrToFloat(edtLado3_layout1.Text);
end;

procedure TForm1.Layout3Click(Sender: TObject);
var resultDependente, resultTotal : double;
begin

end;

procedure TForm1.ListBoxItem1Click(Sender: TObject);
begin
  Layout1.Visible:= true;
  Layout2.Visible:= false;
  Layout3.Visible:= false;
  MultiView1.TargetControl := Layout1;
end;

procedure TForm1.ListBoxItem2Click(Sender: TObject);
begin
  a:= StrToFloat(edtLado1_layout1.Text);
  b:= StrToFloat(edtLado2_layout1.Text);
  c:= StrToFloat(edtLado3_layout1.Text);



    if (a < b + c) and (b < a + c) and (c < a+b) then
  begin
    if (a=b) and (b = c) and (a=c)then
    begin
      Label4.Text:='Três lados iguais. Trata-se de um Triangulo Equilatero';
    end;


    if (a = b) or (a = c) then
     begin
      Label4.Text:='Dois lados iguais. Trata-se de um Triangulo Isosceles';
     end;

     if (a <> b) and (a <> c) and (b <> c) then

      Label4.Text:='Três lados diferentes. Trata-se de um Triangulo Escaleno';

  end;


  

  Layout1.Visible:= false;
  Layout2.Visible:= true;
  Layout3.Visible:= false;
  MultiView1.TargetControl := Layout2;
end;

procedure TForm1.ListBoxItem3Click(Sender: TObject);

begin

  










  Layout1.Visible:= false;
  Layout2.Visible:= false;
  Layout3.Visible:= true;
  MultiView1.TargetControl := Layout3;

end;

end.
