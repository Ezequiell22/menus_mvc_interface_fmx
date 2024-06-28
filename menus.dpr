program menus;

uses
  System.StartUpCopy,
  FMX.Forms,
  menus.view.principal in 'view\menus.view.principal.pas' {Form1},
  menus.controller.interfaces in 'controller\menus.controller.interfaces.pas',
  menus.model.interfaces in 'model\menus.model.interfaces.pas',
  menus.controller.ListBox.Items.factory in 'controller\menus.controller.ListBox.Items.factory.pas',
  menus.controller.ListBox.factory in 'controller\menus.controller.ListBox.factory.pas',
  menus.controller.ListBox.Items.Default in 'controller\menus.controller.ListBox.Items.Default.pas',
  menus.controller.ListBox.Default in 'controller\menus.controller.ListBox.Default.pas',
  menus.controller.ListBox.Items.Product in 'controller\menus.controller.ListBox.Items.Product.pas',
  menus.controller.ListBox.Principal in 'controller\menus.controller.ListBox.Principal.pas',
  menus.controller.ListBox.Items.Client in 'controller\menus.controller.ListBox.Items.Client.pas',
  menus.view.product in 'view\menus.view.product.pas' {pageProduct},
  menus.controller.ListBox.Product in 'controller\menus.controller.ListBox.Product.pas',
  menus.controller.ListBox.Client in 'controller\menus.controller.ListBox.Client.pas',
  menus.controller.forms.default in 'controller\menus.controller.forms.default.pas',
  menus.view.client2 in 'view\menus.view.client2.pas' {pageCli};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TpageCli, pageCli);
  Application.Run;
end.
