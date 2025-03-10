unit menus.view.principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts;

type
  TForm1 = class(TForm)
    Layout1: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses menus.controller.ListBox.factory;

procedure TForm1.FormCreate(Sender: TObject);
begin
  TcontrollerListBoxFactory.New
    .Principal(Layout1)
    .Display;

end;

end.
