unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,MMSystem;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button8: TButton;
    Button9: TButton;
    Label1: TLabel;
    Label3: TLabel;
    Timer1: TTimer;
    Edit1 : TEdit;
    procedure Button10Click(Sender: TObject);

    procedure Button1Click(Sender: TObject);

    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);

    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  alarmClokcTime:string;
  ss,mm,hh:integer;

implementation

{$R *.lfm}

{ TForm1 }



procedure TForm1.Timer1Timer(Sender: TObject);
begin
      if alarmClokcTime=TimeToStr(Now) then begin
        PlaySound('Splash.mp3',0,SND_ASYNC);
                Timer1.Enabled:=false;
        end;


end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Label3.caption:= Edit1.text + ' ' + Label1.caption;
  alarmClokcTime :=Label1.caption;
  Timer1.Enabled:=true;

end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  If ss>0 then ss:=ss-1;
  label1.caption:=format('%.2d:%.2d',[hh,mm,ss]);
end;






procedure TForm1.Button3Click(Sender: TObject);
begin
  label1.caption:='00:01:00';
  hh:=0;
  mm:=1;
  ss:=0;

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  hh:=hh+1;
  label1.caption:=format('%.2d:%.2d:%.2d',[hh,mm,ss]);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  If mm<59 then mm:=mm+1;
  label1.caption:=format('%.2d:%.2d:%.2d',[hh,mm,ss]);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  If ss<59 then ss:=ss+1;
  label1.caption:=format('%.2d:%.2d:%.2d',[hh,mm,ss]);
end;



procedure TForm1.Button8Click(Sender: TObject);
begin
  If hh>0 then hh:=hh-1;
  label1.caption:=format('%.2d:%.2d:%.2d',[hh,mm,ss]);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  If mm>0 then mm:=mm-1;
  label1.caption:=format('%.2d:%.2d:%.2d',[hh,mm,ss]);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  hh:=0;
  mm:=1;
  ss:=0;

end;

end.

