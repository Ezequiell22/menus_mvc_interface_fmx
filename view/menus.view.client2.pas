unit menus.view.client2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  menus.controller.ListBox.factory;

type
  TpageCli = class(TForm)
    Layout1: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pageCli: TpageCli;

implementation

{$R *.fmx}

procedure TpageCli.FormCreate(Sender: TObject);
begin
    TcontrollerListBoxFactory.New
    .Client(Layout1)
    .Display;
end;


initialization
  RegisterFmxClasses([TpageCli])

  end.
