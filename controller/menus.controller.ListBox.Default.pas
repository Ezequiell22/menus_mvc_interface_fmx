unit menus.controller.ListBox.Default;

interface

uses
  menus.controller.interfaces, System.Classes, FMX.ListBox,
  FMX.Types, FMX.Layouts;

type
  TControllerListBoxDefault = class(TInterfacedObject,
    iControllerListBoxDefault)

  private
    FContainer: TComponent;
    FListBox: TListBox;
  public
    constructor create(aContainer: TComponent);
    destructor destroy; override;
    class function NEw(aContainer: TComponent): iControllerListBoxDefault;
    function Name(aValue: string): iControllerListBoxDefault;
    function Align(aValue: TAlignLayout): iControllerListBoxDefault;
    function ItemHeight(aValue: integer): iControllerListBoxDefault;
    function AddItem(aValue: TFMXObject): iControllerListBoxDefault;
    function List: TFMXObject;
    procedure Display;
  end;

implementation

{ TControllerListBoxDefault }

function TControllerListBoxDefault.AddItem(aValue: TFMXObject)
  : iControllerListBoxDefault;
begin
  result := Self;
  FListBox.AddObject(aValue)
end;

function TControllerListBoxDefault.Align(aValue: TAlignLayout)
  : iControllerListBoxDefault;
begin
  result := Self;
  FListBox.Align := aValue;
end;

constructor TControllerListBoxDefault.create(aContainer: TComponent);
begin
  FContainer := aContainer;
  FListBox := TListBox.create(nil);
  FListBox.Name := 'ListDefault';
  FListBox.Align := TAlignLayout.Client;
  FListBox.ItemHeight := 60;
end;

destructor TControllerListBoxDefault.destroy;
begin

  inherited;
end;

procedure TControllerListBoxDefault.Display;
begin
  TLayout(FContainer).AddObject(FListBox)
end;

function TControllerListBoxDefault.ItemHeight(aValue: integer)
  : iControllerListBoxDefault;
begin
  result := Self;
  FListBox.ItemHeight := aValue;
end;

function TControllerListBoxDefault.List: TFMXObject;
begin
  result := FListBox;
end;

function TControllerListBoxDefault.Name(aValue: string)
  : iControllerListBoxDefault;
begin
  result := Self;
  FListBox.Name := aValue;
end;

class function TControllerListBoxDefault.NEw(aContainer: TComponent)
  : iControllerListBoxDefault;
begin
  result := Self.create(aContainer)
end;

end.
