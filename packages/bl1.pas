unit bl1;  
interface 
uses  CRT, SysUtils,
      bl11,bl13; {4 up}
      {3 down}
      {only bl1's}

procedure back_tipology; 

implementation 

      procedure back_tipology;
      var   esc: integer;
      begin

            writeln('Deseja alguma destas opcoes:');
            writeln('1: primeira tiragem na cli;');
            writeln('2: segunda vez ou mais;');
            writeln('3: ver tiragem;');
            write('Resposta:');
            readln(esc);
            
            if(esc = 1) then begin {1-1': primeira tiragem na cli;}
                    procedure_1_1_tipology;
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
                
                    procedure_1_3_tipology;
            end;

      end; 

end.