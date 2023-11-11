unit Controller.Cliente;

interface

uses Horse, System.JSON, system.SysUtils;

procedure Registry;

implementation

procedure listarCliente(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin
   Res.Send('listar clientes');
end;

procedure cadastrarCliente(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin
  Res.Send('cadastrar cliente');
end;

procedure excluirCliente(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin
  Res.Send('Excluir um cliente');
end;

procedure Registry;
begin
  THorse.Get('/cliente', listarCliente);

  THorse.Post('/cliente', cadastrarCliente);

  THorse.delete('/cliente', excluirCliente);
end;

end.
