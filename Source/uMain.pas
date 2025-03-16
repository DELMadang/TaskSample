unit uMain;

interface

uses
  System.SysUtils,
  System.Classes,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnSync: TButton;
    btnTask: TButton;
    Memo1: TMemo;
    procedure btnSyncClick(Sender: TObject);
    procedure btnTaskClick(Sender: TObject);
  private
    procedure Log(const AMessage: string);
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  System.Threading;

procedure TForm1.btnSyncClick(Sender: TObject);
begin
  Log('Sync Start');
  Sleep(5000);
  Log('Sync Comleted');
end;

procedure TForm1.btnTaskClick(Sender: TObject);
var
  LTask: ITask;
begin
  LTask := TTAsk.Create(
    procedure
    begin
      Sleep(5000);

      TThread.Queue(
        nil,
        procedure
        begin
          Log('Task Complete');
        end
      );
    end
  );

  Log('Task Before Start');
  LTask.Start;
  Log('Task After Start');
end;

procedure TForm1.Log(const AMessage: string);
begin
  Memo1.Lines.Add(AMessage);
end;

end.
