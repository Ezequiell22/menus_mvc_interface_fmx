unit menus.controller.interfaces;

interface

uses
  System.Classes, FMX.Types;

type
  icontrollerListBoxItemsDefault = interface;
  iControllerListBoxDefault = interface;

  iControllerListBoxMenu = interface
    ['{AD38FE91-E0C3-4CD7-86E8-7525B9CE20C8}']
    procedure Display;
  end;

  iControllerListBoxItemsForm = interface
    ['{4AE285AC-A71C-4C99-82AB-50C4685FD52B}']
    function show: TFmxObject;
  end;

  iControllerListBoxItemsFactory = interface
    ['{156284EA-840F-4505-80DF-99E4EB0CDDC7}']
    function Default: icontrollerListBoxItemsDefault;
    function Product: iControllerListBoxItemsForm;
    function Client: iControllerListBoxItemsForm;
  end;

  icontrollerListBoxFactory = interface
    ['{973EDC3A-6E83-42DE-8942-D1C1BC123A4D}']
    function Default(container: TComponent): iControllerListBoxDefault;
    function Principal (container: TComponent): iControllerListBoxMenu;
    function Product (container: TComponent): iControllerListBoxMenu;
    function Client (container: TComponent): iControllerListBoxMenu;
  end;

  icontrollerListBoxItemsDefault = interface
    ['{05F3DF3B-4E83-4DC5-8416-8826886889E4}']
    function Name(aValue: string): icontrollerListBoxItemsDefault;
    function Text(aValue: string): icontrollerListBoxItemsDefault;
    function StyleLookup(aValue: string): icontrollerListBoxItemsDefault;
    function onClick(aValue: TNotifyEvent): icontrollerListBoxItemsDefault;
    function Item: TFmxObject;
  end;

  iControllerListBoxDefault = interface
    ['{1F577795-FCEE-4BB1-9A99-9860786D7E27}']
    function Name(aValue: string): iControllerListBoxDefault;
    function Align(aValue: TAlignLayout): iControllerListBoxDefault;
    function ItemHeight(aValue: integer): iControllerListBoxDefault;
    function AddItem(aValue: TFmxObject): iControllerListBoxDefault;
    function List: TFmxObject;
    procedure Display;
  end;

implementation

end.
