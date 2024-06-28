unit menus.controller.ListBox.Items.Default;

interface

uses
  menus.controller.interfaces,
  FMX.ListBox, System.Classes, FMX.Types;

type
  TcontrollerListBoxItemsDefault = class(TInterfacedObject,
    icontrollerListBoxItemsDefault)
  private
    FListBoxItem: TListBoxItem;
  public
    constructor create;
    destructor destroy; override;
    class function New: icontrollerListBoxItemsDefault;
    function Name(aValue: string): icontrollerListBoxItemsDefault;
    function Text(aValue: string): icontrollerListBoxItemsDefault;
    function StyleLookup(aValue: string): icontrollerListBoxItemsDefault;
    function onClick(aValue: TNotifyEvent): icontrollerListBoxItemsDefault;
    function Item : TFMXObject;
  end;

implementation

{ TcontrollerListBoxItemsDefault }

constructor TcontrollerListBoxItemsDefault.create;
begin
  FListBoxItem := TListBoxItem.create(nil);
  FListBoxItem.Name := 'btnDefault';
  FListBoxItem.Text := 'Default';
  FListBoxItem.StyleLookup := 'listboxitemdetaillabel';

end;

destructor TcontrollerListBoxItemsDefault.destroy;
begin

  inherited;
end;

function TcontrollerListBoxItemsDefault.Item: TFMXObject;
begin
  result := FListBoxItem;
end;

function TcontrollerListBoxItemsDefault.Name(aValue: string)
  : icontrollerListBoxItemsDefault;
begin
  result := Self;
  FListBoxItem.Name := aValue;
end;

class function TcontrollerListBoxItemsDefault.New
  : icontrollerListBoxItemsDefault;
begin
  result := Self.create;
end;

function TcontrollerListBoxItemsDefault.onClick(aValue: TNotifyEvent)
  : icontrollerListBoxItemsDefault;
begin
  Result := Self;
  FListBoxItem.onClick := aValue;
end;

function TcontrollerListBoxItemsDefault.StyleLookup(aValue: string)
  : icontrollerListBoxItemsDefault;
begin
  result := Self;
  FListBoxItem.StyleLookup := aValue;
end;

function TcontrollerListBoxItemsDefault.Text(aValue: string)
  : icontrollerListBoxItemsDefault;
begin
  result := Self;
  FListBoxItem.Text := aValue;
end;

end.
