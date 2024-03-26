unit unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure MemoChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;  var k, n, rez: int64;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Button1Click(Sender: TObject);
var i,t,k,k1:integer;
begin
  k:=strtoint(Edit1.Text); // число
  k1:=strtoint(Edit2.Text); // степень
  i:=1; t:=1;
  while i<=k1 do
  begin
  t:=t*k;
  i:=i+1;
  end;
  Memo.Lines.add('число '+Edit1.Text+' в степени '+Edit2.Text+' равно: '+IntToStr(t));
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  k:=StrToInt(Edit1.Text);
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  n:=StrToInt(Edit2.Text);
end;

procedure TForm1.MemoChange(Sender: TObject);
begin

end;

end.

