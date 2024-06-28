unit menus.controller.ListBox.Items.Client;

interface

uses
  menus.controller.interfaces,
  FMX.Types;

type
  TControllerListBoxItemsClient = class(TInterfacedObject,
    iControllerListBoxItemsForm)
    constructor create;
    destructor destroy; override;
    class function New: iControllerListBoxItemsForm;
    function show: TFmxObject;
    procedure click(Sender: TObject);
  end;

implementation

uses
  menus.controller.ListBox.Items.factory, menus.controller.forms.default;

{ TControllerListBoxItemsClient }

procedure TControllerListBoxItemsClient.click(Sender: TObject);
begin
  TControllerFormsDefault.CreateForm('TpageCli')
end;

constructor TControllerListBoxItemsClient.create;
begin

end;

destructor TControllerListBoxItemsClient.destroy;
begin

  inherited;
end;

class function TControllerListBoxItemsClient.New: iControllerListBoxItemsForm;
begin
  result := Self.create;
end;

function TControllerListBoxItemsClient.show: TFmxObject;
begin
  result := TControllerListBoxItemsFactory
    .New
    .Default
    .Name('btnClient')
    .Text('Client')
    .onClick(click)
    .Item;
end;

end.
