unit menus.controller.ListBox.Items.factory;

interface

uses
  menus.controller.interfaces,
  menus.controller.ListBox.Items.Default,
  menus.controller.ListBox.Items.Product;

type
  TControllerListBoxItemsFactory = class(TInterfacedObject,
    iControllerListBoxItemsFactory)
    constructor create;
    destructor Destroy; override;
    class function New: iControllerListBoxItemsFactory;
    function Default: icontrollerListBoxItemsDefault;
    function Product: iControllerListBoxItemsForm;
    function Client: iControllerListBoxItemsForm;
  end;

implementation

{ TControllerListBoxItemsFactory }

uses menus.controller.ListBox.Items.Client;

function TControllerListBoxItemsFactory.Client: iControllerListBoxItemsForm;
begin
  result := TControllerListBoxItemsClient.New;
end;

constructor TControllerListBoxItemsFactory.create;
begin

end;

function TControllerListBoxItemsFactory.Default: icontrollerListBoxItemsDefault;
begin
  result := TcontrollerListBoxItemsDefault.New;
end;

destructor TControllerListBoxItemsFactory.Destroy;
begin

  inherited;
end;

class function TControllerListBoxItemsFactory.New
  : iControllerListBoxItemsFactory;
begin
  result := Self.create;
end;

function TControllerListBoxItemsFactory.Product: iControllerListBoxItemsForm;
begin
  result := TControllerListBoxItemsProduct.New;
end;

end.
