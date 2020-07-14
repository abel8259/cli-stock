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
         end;

   CAD0 = FILE of rec0; 

   var season_0: integer;
       t_p_o: string; 
       cadastro_0: rec0;
       caadzero: CAD0;     



   begin

      assign(caadzero, 'C:/cli-stock/t_p_0.DAT'); 
      reset(caadzero);
      writeln('Digite a season 0 (Tipagem numerica) do produto:');
      writeln('o.b.s.: digite em numeros, somente letras aceitas.');
      readln(season_0); 
      cadastro_0.s_0 := season_0;
      writeln('Digite o T P O (Tipagem de letras) do produto:');
      writeln('o.b.s.: digite a vontade.');
      readln(t_p_o);
      cadastro_0.tpo := t_p_o;
      
      write(caadzero, cadastro_0);
      close(caadzero);
   end; 





end.