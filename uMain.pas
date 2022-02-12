unit uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.TabControl, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Effects, Skia.FMX,
  FMX.Layouts, FMX.Edit;

type
  TFrmMain = class(TForm)
    TabCon: TTabControl;
    TabSignup: TTabItem;
    TabReg: TTabItem;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Image1: TImage;
    Rectangle3: TRectangle;
    SkLabel1: TSkLabel;
    ShadowEffect1: TShadowEffect;
    ShadowEffect2: TShadowEffect;
    ShadowEffect3: TShadowEffect;
    Rectangle4: TRectangle;
    BtnNext: TSpeedButton;
    SkLabel2: TSkLabel;
    ShadowEffect4: TShadowEffect;
    Rectangle5: TRectangle;
    Label1: TLabel;
    Layout1: TLayout;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    Text1: TText;
    Text2: TText;
    Image2: TImage;
    Image3: TImage;
    Text3: TText;
    LayFirstName: TLayout;
    Text10: TText;
    Rectangle16: TRectangle;
    EdtFirstName: TEdit;
    LayLastName: TLayout;
    Text9: TText;
    Rectangle15: TRectangle;
    EdtLastName: TEdit;
    LayNumber: TLayout;
    Text8: TText;
    Rectangle14: TRectangle;
    EdtNumber: TEdit;
    LayEmail: TLayout;
    Text53: TText;
    Rectangle13: TRectangle;
    EdtEmail: TEdit;
    StyleBook1: TStyleBook;
    ShadowEffect5: TShadowEffect;
    ShadowEffect6: TShadowEffect;
    ShadowEffect7: TShadowEffect;
    ShadowEffect8: TShadowEffect;
    ShadowEffect9: TShadowEffect;
    Rectangle8: TRectangle;
    SpeedButton2: TSpeedButton;
    ShadowEffect10: TShadowEffect;
    Layout4: TLayout;
    Line1: TLine;
    BtnBackSerach: TImage;
    procedure BtnNextClick(Sender: TObject);
    procedure BtnBackSerachClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.fmx}

uses Android.SystemBars;

procedure TFrmMain.BtnBackSerachClick(Sender: TObject);
begin
TabCon.GotoVisibleTab(0);
end;

procedure TFrmMain.BtnNextClick(Sender: TObject);
begin
TabCon.GotoVisibleTab(1);
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
{$IFDEF ANDROID}
  Fill.Kind := TBrushKind.Solid;
  Fill.Color := $FFFEFFFF;
  TAndroidSystemBars.RemoveSystemBarsBackground(TAlphaColors.White,TAlphaColors.White);
  Padding.Rect := TAndroidSystemBars.TappableInsets;
{$ENDIF}
end;

end.
