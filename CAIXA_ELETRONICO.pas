Program Caixa_Eletonico;
uses crt;
var
cliente_1, cliente_2 : string;
resp, cliente, senha : string;
cont_senha : integer;
escolha : integer;
agencia, corrente, poupanca, corrente_dest, poupanca_dest, deposito, cpf : integer;
saldo_cc, saldo_cp, saldo_atual, saque, transfer : real;
selec : char;
Begin
  agencia := 0;
  cont_senha := 0;
  writeln('           BEM VINDO AO NOSSO BANCO!');
  writeln('-----------------------------------------------');
  writeln('');
  repeat
    writeln('SELECIONE A OPERACAO QUE DESEJA REALIZAR.');
    writeln('');
    writeln('1 - CRIAR CADASTRO');
    writeln('2 - CONSULTA DE SALDO');
    writeln('3 - SAQUE');
    writeln('4 - DEPOSITO');
    writeln('5 - TRANSFERENCIA');
    readln(selec); 
    clrscr;
    case selec of
      '1' : begin //CRIAR CADASTRO;
        writeln('PARA REALIZAR O CADASTRO IREMOS PRECISAR DE ALGUMAS INFORMACOES.');
        writeln('');
        writeln('QUAL O SEU NOME?');
        readln(cliente);
        writeln('');
        writeln('QUAL O SEU CPF?');
        readln(cpf);
        writeln('');
        writeln('QUAL SERA A SUA SENHA DE ACESSO?');
        readln(senha);
        writeln('');
        writeln('QUE TIPO DE CONTA DESEJA ABRIR?');
        writeln('');
        writeln('1 - CONTA CORRENTE');
        writeln('2 - CONTA POUPANCA');
        readln(escolha);
        clrscr;
        if (escolha = 1) then
        begin
          writeln('CONTA CORRENTE');
          writeln('');
          writeln('INFORME QUAL SERA A SUA CONTA CORRENTE.(DEVERA CONTER SETE NUMEROS. NAO DIGITE SIMBOLOS.)');
          readln(corrente);
          writeln('');
          writeln('SERA NECESSARIO QUE DEPOSITE UM VALOR PARA QUE POSSAMOS ABRIR A SUA CONTA.');
          writeln('QUANTO DESEJA DEPOSITAR?');
          readln(deposito);
          clrscr;
          writeln('');
          writeln(cliente);
          writeln(corrente);
          writeln('VALOR DO DEPOSITO: R$ ',deposito);
          writeln('');
          writeln('PRESSIONE ENTER PARA CONTINUAR.');
          readln();
          writeln('');
          writeln('Sr(a) ',cliente,', SEJA BEM VINDO(a) AO NOSSO BANCO!');
          readln;
          clrscr;
        end
        else
        begin
          if (escolha = 2) then
          begin
            writeln('CONTA POUPANCA');
            writeln('');
            writeln('INFORME QUAL SERA A SUA CONTA CORRENTE.(DEVERA CONTER SETE NUMEROS. NAO DIGITE SIMBOLOS.)');
            readln(poupanca);
            writeln('');
            writeln('SERA NECESSARIO QUE DEPOSITE UM VALOR PARA QUE POSSAMOS ABRIR A SUA CONTA.');
            writeln('QUANTO DESEJA DEPOSITAR?');
            readln(deposito);
            clrscr;
            writeln('');
            writeln(cliente);
            writeln(poupanca);
            writeln('VALOR DO DEPOSITO: R$ ',deposito);
            writeln('');
            writeln('PRESSIONE ENTER PARA CONTINUAR.');
            readln();
            writeln('');
            writeln('Sr(a) ',cliente,', SEJA BEM VINDO(a) AO NOSSO BANCO!');
            readln;
            clrscr;
          end;
        end;
      end;
      '2' : begin //CONSULTA DE SALDO;
        writeln('CONSULTA DE SALDO.');
        writeln('');
        writeln('1 - CONTA CORRENTE');
        writeln('2 - CONTA POUPANCA');
        readln(escolha);
        writeln('');
        clrscr;
        if (escolha = 1) then
        begin
          writeln('CONSULTA DE SALDO CONTA CORRENTE');
          writeln('');
          writeln('INFORME A SUA CONTA');
          readln(corrente);
          writeln('');
          writeln('INFORME A SUA AGENCIA');
          readln(agencia);
          writeln('');
          writeln('DIGITE A SUA SENHA');
          readln(senha);
          clrscr;
          if (senha <> '123456') then
          begin
            repeat
              writeln('VOCÊ DIGITOU A SENHA INCORRETAMENTE, DIGITE NOVAMETE.');
              readln(senha);
              cont_senha := cont_senha+1;
            until cont_senha=2;
          end
          else
          begin
            writeln('');
            writeln(corrente);
            writeln(agencia);
            writeln('SEU SALDO E R$ ',saldo_cc);
            writeln('');
            writeln('PRESSIONE ENTER PARA SAIR');
            readln;
            clrscr;
          end;
        end
        else
        begin
          if (escolha = 2) then
          begin
            writeln('CONSULTA DE SALDO CONTA POUPANCA');
            writeln('');
            writeln('INFORME A SUA CONTA');
            readln(poupanca);
            writeln('');
            writeln('INFORME A SUA AGENCIA');
            readln(agencia);
            writeln('');
            writeln('DIGITE A SUA SENHA');
            readln(senha);
            clrscr;
            if (senha <> '123456') then
            begin
              repeat
                writeln('VOCÊ DIGITOU A SENHA INCORRETAMENTE, DIGITE NOVAMETE.');
                readln(senha);
                cont_senha := cont_senha+1;
              until cont_senha=2;
            end;
          end
          else
          begin
            writeln('');
            writeln(poupanca);
            writeln(agencia);
            writeln('SEU SALDO E R$ ',saldo_cp);
            writeln('');
            writeln('PRESSIONE ENTER PARA SAIR');
            readln;
            clrscr;
          end;
        end;
      end;
      '3' : begin //SAQUE;
        writeln('SAQUE.');
        writeln('');
        writeln('1 - CONTA CORRENTE');
        writeln('2 - CONTA POUPANCA');
        readln(escolha);
        writeln('');
        clrscr;
        if (escolha = 1) then
        begin
          writeln('SAQUE CONTA CORRENTE');
          writeln('');
          writeln('INFORME A SUA CONTA');
          readln(corrente);
          writeln('');
          writeln('INFORME A SUA AGENCIA');
          readln(agencia);
          writeln('');
          writeln('DIGITE A SUA SENHA');
          readln(senha);
          clrscr;
          if (senha <> '123456') then
          begin
            repeat
              writeln('VOCÊ DIGITOU A SENHA INCORRETAMENTE, DIGITE NOVAMETE.');
              readln(senha);
              cont_senha := cont_senha+1;
            until cont_senha=2;
          end;
          writeln('');
          writeln(corrente);
          writeln(agencia);
          writeln('R$ ',saldo_cc);
          writeln('');
          writeln('INFORME O VALOR DO SAQUE');
          readln(saque);
          clrscr;
          saldo_atual := saldo_cc-saque;
          writeln('DIGITE A SUA SENHA NOVAMENTE');
          readln(senha);
          clrscr;
          writeln(corrente);
          writeln(agencia);
          writeln('O SEU SALDO ATUAL E: R$ ',saldo_atual);
          writeln('');
        end
        else
        begin
          if (escolha = 2) then
          begin
            writeln('SAQUE CONTA POUPANCA');
            writeln('');
            writeln('INFORME A SUA CONTA');
            readln(poupanca);
            writeln('');
            writeln('INFORME A SUA AGENCIA');
            readln(agencia);
            writeln('');
            writeln('DIGITE A SUA SENHA');
            readln(senha);
            clrscr;
            if (senha <> '123456') then
            begin
              repeat
                writeln('VOCÊ DIGITOU A SENHA INCORRETAMENTE, DIGITE NOVAMETE.');
                readln(senha);
                cont_senha := cont_senha+1;
              until cont_senha=2;
            end;
            writeln('');
            writeln(poupanca);
            writeln(agencia);
            writeln('R$ ',saldo_cp);
            writeln('INFORME O VALOR DO SAQUE');
            readln(saque);
            clrscr;
            saldo_atual := saldo_cp-saque;
            writeln('DIGITE A SUA SENHA NOVAMENTE');
            readln(senha);
            clrscr;
            writeln(corrente);
            writeln(agencia);
            writeln('O SEU SALDO ATUAL E: R$ ',saldo_atual);
            writeln('');
            clrscr;
          end;
        end;
      end;
      '4' : begin //DEPÓSITO;
        writeln('DEPOSITO');
        writeln('');
        writeln('1 - CONTA CORRENTE');
        writeln('2 - CONTA POUPANCA');
        readln(escolha);
        clrscr;
        if (escolha = 1) then
        begin
          writeln('DEPOSITO EM CONTA CORRENTE');
          writeln('');
          writeln('INFORME A CONTA QUE RECEBERA O DEPOSITO');
          readln(corrente);
          writeln('');
          writeln('INFORME A AGENCIA');
          readln(agencia);
          writeln('');
          writeln('INFORME O VALOR DO DEPOSITO');
          readln(deposito);
          clrscr;
          writeln('');
          writeln(corrente);
          writeln(agencia);
          writeln('VALOR DO DEPOSITO: R$ ',deposito);
          writeln('');
          writeln('APERTE ENTER PARA CONFIRMAR');
          readln();
          clrscr;
          writeln('');
          writeln('DEPOSITO REALIZADO COM SUCESSO.');
          saldo_cc := saldo_cc+deposito;
          writeln('');
          clrscr;
        end
        else
        begin
          if (escolha = 2) then
          begin
            writeln('DEPOSITO EM CONTA POUPANCA');
            writeln('');
            writeln('INFORME A CONTA QUE RECEBERA O DEPOSITO');
            readln(poupanca);
            writeln('');
            writeln('INFORME A AGENCIA');
            readln(agencia);
            writeln('');
            writeln('INFORME O VALOR DO DEPOSITO');
            readln(deposito);
            clrscr;
            writeln('');
            writeln(poupanca);
            writeln(agencia);
            writeln('VALOR DO DEPOSITO: R$ ',deposito);
            writeln('');
            writeln('APERTE ENTER PARA CONFIRMAR');
            readln();
            clrscr;
            writeln('');
            writeln('DEPOSITO REALIZADO COM SUCESSO.');
            saldo_cp := saldo_cp+deposito;
            writeln('');
            clrscr;
          end;
        end;
      end;
      '5' : begin //TRANSFERÊNCIA;
        writeln('TRANFERENCIA');
        writeln('');
        writeln('1 - CONTA CORRENTE');
        writeln('2 - CONTA POUPANCA');
        readln(escolha);
        clrscr;
        writeln('');
        if escolha = 1 then
        begin
          writeln('TRANSFERENCIA CONTA CORRENTE');
          writeln('');
          writeln('INFORME A SUA CONTA CORRENTE');
          readln(corrente);
          writeln('');
          writeln('INFORME A AGENCIA');
          readln(agencia);
          writeln('');
          writeln('DIGITE A SUA SENHA');
          readln(senha);
          clrscr;
          if (senha <> '123456') then
          begin
            repeat
              writeln('VOCÊ DIGITOU A SENHA INCORRETAMENTE, DIGITE NOVAMETE.');
              readln(senha);
              cont_senha := cont_senha+1;
            until cont_senha=2;
          end;
          writeln('');
          writeln(corrente);
          writeln('agencia');
          writeln('SALDO: R$ ',saldo_cc);
          writeln('');
          writeln('INFORME A CONTA QUE RECEBERA A TRANSFERENCIA');
          readln(corrente);
          writeln('');
          writeln('INFORME A AGENCIA');
          readln(agencia);
          writeln('');
          writeln('INFORME O VALOR A SER TRANSFERIDO');
          readln(transfer);
          clrscr;
          writeln('');
          writeln('CONTA DE DESTINO');
          writeln(corrente_dest);
          writeln(agencia);
          writeln('VALOR A SER TRANSFERIDO: R$ ',transfer);
          writeln('');
          writeln('PARA CONFIRMAR APERTE ENTER');
          readln();
          clrscr;
          writeln('');
          writeln('TRANSFERENCIA REALIZADA');
          writeln('');
          saldo_atual := saldo_cc-transfer;
          writeln(corrente);
          writeln(agencia);
          writeln('O SEU SALDO ATUAL E: R$ ',saldo_atual);
          readln;
          clrscr;
        end
        else
        begin
          if (escolha = 2) then
          begin
            writeln('TRANSFERENCIA CONTA POUPANCA');
            writeln('');
            writeln('INFORME A SUA CONTA POUPANCA');
            readln(poupanca);
            writeln('');
            writeln('INFORME A AGENCIA');
            readln(agencia);
            writeln('');
            writeln('DIGITE A SUA SENHA');
            readln(senha);
            clrscr;
            if (senha <> '123456') then
            begin
              repeat
                writeln('VOCÊ DIGITOU A SENHA INCORRETAMENTE, DIGITE NOVAMETE.');
                readln(senha);
                cont_senha := cont_senha+1;
              until cont_senha=2;
            end;
            writeln('');
            writeln(poupanca);
            writeln('agencia');
            writeln('SALDO: R$ ',saldo_cp);
            writeln('');
            writeln('INFORME A CONTA QUE RECEBERA A TRANSFERENCIA');
            readln(poupanca_dest);
            writeln('');
            writeln('INFORME A AGENCIA');
            readln(agencia);
            writeln('');
            writeln('INFORME O VALOR A SER TRANSFERIDO');
            readln(transfer);
            clrscr;
            writeln('');
            writeln('CONTA DE DESTINO');
            writeln(poupanca);
            writeln(agencia);
            writeln('VALOR A SER TRANSFERIDO: R$ ',transfer);
            writeln('');
            writeln('PARA CONFIRMAR APERTE ENTER');
            readln();
            clrscr;
            writeln('');
            writeln('TRANSFERENCIA REALIZADA');
            writeln('');
            saldo_atual := saldo_cp-transfer;
            writeln(corrente);
            writeln(agencia);
            writeln('O SEU SALDO ATUAL E: R$ ',saldo_atual);
            readln;
            clrscr;
          end;
        end;
      end;
    end;
    clrscr;
    writeln('DESEJA REALIZAR OUTRA OPERACAO?(s/n)');
    readln(resp);
    writeln('_____________________________________________');
    writeln('');
  until  (resp=('n')) or (resp=('N'));
  clrscr;
end.