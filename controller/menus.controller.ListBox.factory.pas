unit menus.controller.ListBox.factory;

interface

uses
  menus.controller.interfaces,
  System.Classes,
  menus.controller.ListBox.Default,
  menus.controller.ListBox.Principal;

type
  TcontrollerListBoxFactory = class(TInterfacedObject,
    icontrollerListBoxFactory)
    constructor create;
    destructor Destroy; override;
    class function New: icontrollerListBoxFactory;
    function Default(container: TComponent): iControllerListBoxDefault;
    function Principal(container: TComponent): iControllerListBoxMenu;
    function Product(container: TComponent): iControllerListBoxMenu;
    function Client(container: TComponent): iControllerListBoxMenu;
  end;

implementation

uses
  menus.controller.ListBox.Client, menus.controller.ListBox.Product;

{ TcontrollerListBoxFactory }

function TcontrollerListBoxFactory.Client(container: TComponent)
  : iControllerListBoxMenu;
begin
  result := TControllerListBoxClient.New(container);
end;

constructor TcontrollerListBoxFactory.create;
begin

end;

function TcontrollerListBoxFactory.Default(container: TComponent)
  : iControllerListBoxDefault;
begin
  result := TControllerListBoxDefault.New(container);
end;

destructor TcontrollerListBoxFactory.Destroy;
begin

  inherited;
end;

class function TcontrollerListBoxFactory.New: icontrollerListBoxFactory;
begin
  result := Self.create;
end;

function TcontrollerListBoxFactory.Principal(container: TComponent)
  : iControllerListBoxMenu;
begin
  result := TControllerListBoxPrincipal.New(container);
end;

function TcontrollerListBoxFactory.Product(container: TComponent)
  : iControllerListBoxMenu;
begin
  result := TControllerListBoxProduct.New(container);
end;

end.
