unit menus.controller.forms.default;

interface

uses
  FMX.Types;

type
  TControllerFormsDefault = class
    class procedure CreateForm(className: string);
  end;

implementation

uses
  FMX.forms, System.Classes, System.SysUtils;

{ TControllerFormsDefault }

class procedure TControllerFormsDefault.CreateForm(className: string);
var
  objFmx: TFMXObjectClass;
  newForm: TCustomForm;
begin
  objFmx := TFMXObjectClass(getclass(className));
  try
    newForm := (objFmx.Create(nil) as TCustomForm);
    try
      newForm.ShowModal;
    finally
      newForm.Free;

    end;

  except
    on e:Exception do
      raise Exception.Create('Objeto não existe '+e.Message);
  end;

end;

end.
