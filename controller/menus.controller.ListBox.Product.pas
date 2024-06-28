unit menus.controller.ListBox.Product;

interface

uses
  System.Classes,
  menus.controller.interfaces,
  menus.controller.ListBox.Items.factory;

type
  TControllerListBoxProduct = class(TInterfacedObject, iControllerListBoxMenu)
  private
    FContainer: Tcomponent;
  public
    constructor create(container: Tcomponent);
    destructor destroy; override;
    class function New(container: Tcomponent): iControllerListBoxMenu;
    procedure Display;
  end;

implementation

uses menus.controller.ListBox.factory; { aqui não da erro de circular }

{ TControllerListBoxProduct }

constructor TControllerListBoxProduct.create(container: Tcomponent);
begin
  FContainer := container;
end;

destructor TControllerListBoxProduct.destroy;
begin

  inherited;
end;

procedure TControllerListBoxProduct.Display;
begin
  TControllerListBoxFactory
    .New
    .Default(FContainer)
    .AddItem(TControllerListBoxItemsFactory.New.Client.show)
    .Display;
end;

class function TControllerListBoxProduct.New(container: Tcomponent)
  : iControllerListBoxMenu;
begin
  result := Self.create(container)
end;

end.
