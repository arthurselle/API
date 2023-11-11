program Server;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Horse,
  Controller.Cliente in 'Controller\Controller.Cliente.pas';

begin

  controller.Cliente.Registry;
  //controller.Produto.Registry;
  //controller.Usuario.Registry;

  THorse.Listen(9000);
end.
