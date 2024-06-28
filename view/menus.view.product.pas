unit menus.view.product;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts,
  menus.controller.ListBox.factory;

type
  TpageProduct = class(TForm)
    Label1: TLabel;
    Layout1: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pageProduct: TpageProduct;

implementation

{$R *.fmx}


procedure TpageProduct.FormCreate(Sender: TObject);
begin
    TcontrollerListBoxFactory.New
    .product(Layout1)
    .Display;
end;

initialization
  RegisterFmxClasses([TpageProduct])

end.
