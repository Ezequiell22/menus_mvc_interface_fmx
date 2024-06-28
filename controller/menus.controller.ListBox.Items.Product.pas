unit menus.controller.ListBox.Items.Product;

interface

uses
  menus.controller.interfaces,
  FMX.Types;

type
  TControllerListBoxItemsProduct = class(TInterfacedObject,
    iControllerListBoxItemsForm)
    constructor create;
    destructor destroy; override;
    class function New: iControllerListBoxItemsForm;
    function show: TFmxObject;
    procedure click(Sender : TObject);
  end;

implementation

uses
  menus.controller.ListBox.Items.factory, menus.controller.forms.default;

{ TControllerListBoxItemsProduct }

procedure TControllerListBoxItemsProduct.click(Sender: TObject);
begin
  TControllerFormsDefault.CreateForm('TpageProduct')
end;

constructor TControllerListBoxItemsProduct.create;
begin

end;

destructor TControllerListBoxItemsProduct.destroy;
begin

  inherited;
end;

class function TControllerListBoxItemsProduct.New: iControllerListBoxItemsForm;
begin
  result := Self.create;
end;

function TControllerListBoxItemsProduct.show: TFmxObject;
begin
  result := TControllerListBoxItemsFactory
            .New
            .Default
            .Name('btnProduct')
            .Text('Products')
            .onClick(click)
            .Item;
end;

end.
