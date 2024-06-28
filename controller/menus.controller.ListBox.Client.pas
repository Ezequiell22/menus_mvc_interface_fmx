unit menus.controller.ListBox.Client;

interface

uses
  System.Classes,
  menus.controller.interfaces,
  menus.controller.ListBox.Items.factory;

type
  TControllerListBoxClient = class(TInterfacedObject, iControllerListBoxMenu)
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

{ TControllerListBoxClient }

constructor TControllerListBoxClient.create(container: Tcomponent);
begin
  FContainer := container;
end;

destructor TControllerListBoxClient.destroy;
begin

  inherited;
end;

procedure TControllerListBoxClient.Display;
begin
  TControllerListBoxFactory.New.Default(FContainer)
    .AddItem(TControllerListBoxItemsFactory.New.product.show).Display;
end;

class function TControllerListBoxClient.New(container: Tcomponent)
  : iControllerListBoxMenu;
begin
  result := Self.create(container)
end;

end.
