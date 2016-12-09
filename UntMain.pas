unit UntMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, Menus, StdCtrls;

type
  TfrmMain = class(TForm)
    ActionList1: TActionList;
    actAlgorithmAndDataStructure: TAction;
    actCodeGen: TAction;
    MainMenu1: TMainMenu;
    actAlgorithmAndDataStructure1: TMenuItem;
    actCodeGen1: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    procedure actCodeGenExecute(Sender: TObject);
    procedure actAlgorithmAndDataStructureExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  UntCodeGen, UntADS;

{$R *.dfm}

procedure TfrmMain.actCodeGenExecute(Sender: TObject);
begin
  frmCodeGen := TfrmCodeGen.Create(nil);
  frmCodeGen.ShowModal;
  frmCodeGen.Free;
end;

procedure TfrmMain.actAlgorithmAndDataStructureExecute(Sender: TObject);
begin
  frmADS := TfrmADS.Create(nil);
  frmADS.ShowModal;
  frmADS.Free;
end;

end.
