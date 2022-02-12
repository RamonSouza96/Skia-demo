program SkiaDemo;

uses
  System.StartUpCopy,
  FMX.Forms,
  Skia.FMX,
  uMain in 'uMain.pas' {FrmMain},
  Android.SystemBars in 'Android.SystemBars.pas';

{$R *.res}

begin
  GlobalUseSkia := True;
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
