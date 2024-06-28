unit menus.controller.ListBox.Principal;

interface

uses
  System.Classes,
  menus.controller.interfaces,
  menus.controller.ListBox.Items.factory;

type
  TControllerListBoxPrincipal = class(TInterfacedObject, iControllerListBoxMenu)
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

{ TControllerListBoxPrincipal }

constructor TControllerListBoxPrincipal.create(container: Tcomponent);
begin
  FContainer := container;
end;

destructor TControllerListBoxPrincipal.destroy;
begin

  inherited;
end;

procedure TControllerListBoxPrincipal.Display;
begin
  TControllerListBoxFactory
    .New
    .Default(FContainer)
    .AddItem(TControllerListBoxItemsFactory.New.Product.show)
    .AddItem(TControllerListBoxItemsFactory.New.Client.show)
    .Display;
end;

class function TControllerListBoxPrincipal.New(container: Tcomponent)
  : iControllerListBoxMenu;
begin
  result := Self.create(container)
end;

end.
