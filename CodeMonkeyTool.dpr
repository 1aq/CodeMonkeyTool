program CodeMonkeyTool;

uses
  Forms,
  UntCodeGen in 'UntCodeGen.pas' {frmCodeGen},
  UntMain in 'UntMain.pas' {frmMain},
  UntADS in 'UntADS.pas' {frmads};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(Tfrmads, frmads);
  Application.Run;
end.
