unit bl1;  
interface 
uses  CRT, SysUtils; 

procedure back_tipology; 






implementation 

  procedure back_tipology;
  type rec0 =
         record
         s_0: integer;
         tpo: string;
         BASE_1o_v2:array[0..1,0..4] of string; 
         end;

   

  var cadastro_0: rec0;
      CAD0 : FILE of rec0;     
      esc: integer;
      BASE_1o_v1:array[0..1,0..4] of string;    
      cont: integer;

  begin

      writeln('Deseja alguma destas opcoes:');
      writeln('1: primeira tiragem na cli;');
      writeln('2: segunda vez ou mais;');
      writeln('3: ver tiragem;');
      write('Resposta:');
      readln(esc);
      
      if(esc = 1) then begin {1-1': primeira tiragem na cli;}
      
        BASE_1o_v1[0][0] := 'NOME';
        BASE_1o_v1[0][1] := 'PRECO';
        BASE_1o_v1[0][2] := 'ESTRELAS';
        BASE_1o_v1[0][3] := 'ID';

        BASE_1o_v1[0][4] := 'id-arv';
        BASE_1o_v1[1][4] := '1';

        cont := 0;

        assign(CAD0, 'C:/cli-stock/PRODUTO'+BASE_1o_v1[1][4]+'-BASE.DAT');
        rewrite(CAD0); 
        reset(CAD0);

        repeat
          cadastro_0.BASE_1o_v2[0][cont]:=BASE_1o_v1[0][cont];
          cont := cont + 1;
        until cont=5;
        
        cont:= 0; 

        repeat
          writeln;
          writeln('Digite o '+BASE_1o_v1[0][cont]+' do produto:');
          write('Resposta:');
          readln(BASE_1o_v1[1][cont]);
          cadastro_0.BASE_1o_v2[1][cont]:=BASE_1o_v1[1][cont];

          cont := cont + 1;
        until cont=5;

        cont:= 0;
        cadastro_0.BASE_1o_v2[1][5] := cadastro_0.BASE_1o_v2[1][5] + 1;
        write(CAD0, cadastro_0);
        close(CAD0);
 
      end;
      





      if(esc = 2) then begin  {2-a': segunda vez ou mais;}

        writeln('Deseja alguma destas opcoes:');
        writeln('4: alterar um produto em especifico;');
        writeln('5: completar tiragem;');
        writeln('6: fazer backup;');
        writeln('7: ver um produto em especifico;');
        write('Resposta:');
        readln(esc);

        if(esc = 4) then begin {4-2': alterar um produto em especifico;}

        end;

        if(esc = 5) then begin {5-2': completar tiragem;}

        end;

        if(esc = 6) then begin {6-2': fazer backup;}

        end;

        if(esc = 7) then begin {7-2': ver um produto em especifico;}

        end;

      end;





      
      if(esc = 3) then begin {3-1': ver tiragem;}
 
        reset(CAD0);
        read(CAD0, cadastro_0);
        cont:= 0;

        repeat

          write(cadastro_0.BASE_1o_v2[0][cont]+' do produto:');
          writeln(cadastro_0.BASE_1o_v2[1][cont]);
          cont := cont + 1;

        until cont=5;


  

        close(CAD0);    
      end;

  end; 





end.