  program saida;
uses crt;
var
sentido:char;
bit1,bit2,bit3,bit4,bit5,bit6,bit7,bit8:byte;
d:real;
i,tempoint:integer;
RPM,RPMa,mm,pulsoi,tempoi,tempo,pulsos,k,t,resultadozero,voltasmin, idivid20:real;

iy,tempointy:integer;
RPMy,RPMay,mmy,pulsoiy,tempoiy,tempoy,pulsosy,ky,zy
,resultadozeroy,voltasminy, idivid20y:real;

iz,tempointz:integer;
RPMz,RPMaz,mmz,pulsoiz,tempoiz,tempoz,pulsosz,kz,zz
,resultadozeroz,voltasminz, idivid20z: real;

x,y,z: array [1..100] of real;
j,v,b,g :integer;
ch:char;
const
data=$378;
{status= data+1;
control=data+2}
begin
  textcolor (14);
  textbackground(9);
  clrscr;
  j:= 0;
  g:= 0;
     repeat
      j:= j + 1;
      g:=j;
      writeln;
      write(' digite o valor da Coordenada X  ====>');
      readln ( x[j]);
      writeln;
      write(' Digite o valor da coordenada Y  ====>');
      readln ( y[j]);
      writeln;
      write ( 'Digite o valor da coordenada Z ====>');
      readln (z [j]);
      writeln;
      write( ' deseja digitar o valor de mais alguma coordenada (s/n) ');
      readln(ch);
      clrscr;
    until ( ch = 'n') or ( ch = 'N');
  writeln;
  writeln ('          浜様様様様様様様様様様様様様様様様様様様様様様様様� ');
  writeln ('          �  Coordenada �      Coordenada  �     Coordenada � ');
  writeln ('          �      �      �          �       �          �     � ');
  writeln ('          �      X      �          Y       �          Z     � ');
  writeln ('          藩様様様様様様様様様様様様様様様様様様様様様様様様� ');
  writeln;
  j:=1;
   for j:=1 to g do
          begin
          v:=v+1;
          if j=1 then
          gotoxy (10,8+v);
          writeln(x[j]:3:2);
          gotoxy(35,8+v);
          writeln(y[j]:3:2);
          gotoxy(55,8+v);
          writeln(z[j]:3:2);
          End;
          begin
          if (j>1) and (i<=g) then
          gotoxy(10,8+v);
          writeln(x[j]:3:2);
          gotoxy(35,8+v);
          writeln(y[j]:3:2);
          gotoxy(55,8+v);
          writeln(z[j]:3:2);
          end;
          if ((x[j]) > (x[j-1])) and (j>1) and (j<=g) then
          begin
          gotoxy(1,8+v);
          write('S H');
          end
          else if ((x[j]) < (x[j-1])) and (j>1) and (j<=g) then
          begin
          gotoxy(1,8+v);
          write('A H');
          end;
          if ((y[j]) >  (y[j -1])) and (j >1) and (j<=g) then
          begin
          gotoxy(20,8+v);
          write('S H');
          end
          else if ((y[j]) <  y [j -1]) and (j >1) and (j<=g) then
          begin
          gotoxy(20,8+v);
          write('A H');
          end;
          if ((z[j]) > (z[j-1])) and (j>1) and (j<=g) then
          begin
          gotoxy(40,8+v);
          write('S H');
          end
          else if ((z[j]) < (z[j-1])) and (j>1) and (j<=g) then
          begin
          gotoxy(40,8+v);
          write ('A H');
          delay(2000);
          end;


begin
textcolor(14);
textbackground(1);
CLRSCR;
textcolor(44);
GOTOXY (20,6);Write('  浜様様様様様様様様様様様様様様様様様様様様様�  ');
GOTOXY (20,7);write('  �                                           �  ');
GOTOXY (20,8);write('  �            APERTE QUALQUER                �  ');
GOTOXY (20,9);write('  �                                           �  ');
GOTOXY (20,10);write('  �                 TECLA                     �  ');
GOTOXY (20,11);write('  �                                           �  ');
textcolor(34);
GOTOXY (20,12);write('  �              PARA INICIAR                 �  ');
GOTOXY (20,13);write('  �                                           �  ');
GOTOXY (20,14);write('  �              SEU PROGRAMA                 �  ');
GOTOXY (20,15);write('  �                                           �  ');
GOTOXY (20,16);write('  �                                           �  ');
GOTOXY (20,17);write('  藩様様様様様様様様様様様様様様様様様様様様様�  ');
READKEY;
begin
 ClrScr;
textcolor(14);
textbackground(1);
clrscr;
writeln('');writeln('');writeln('');writeln('');
repeat
textcolor(13);

gotoxy(1,1);write('敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕  敖陳陳陳陳陳陳陳朕');
gotoxy(1,2);write('� quantos milimetros deseja andar em x===>       �  �                �');
gotoxy(1,3);write('青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰  青陳陳陳陳陳陳陳潰');

gotoxy(60,2);readln(mm);
until (mm<=500);
repeat
textcolor(14);
gotoxy(1,5);write('敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕  敖陳陳陳陳陳陳陳陳�');
gotoxy(1,6);write('� Qual a rota��o do motor em RPM(RPM max=900)===>�  �                 �');
gotoxy(1,7);write('青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰  青陳陳陳陳陳陳陳陳�');


gotoxy(60,6);readln(RPMa);
RPM:=RPMa*1;
until(RPM<=900);
repeat
textcolor(15);
gotoxy(1,9);write('敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕  敖陳陳陳陳陳陳陳陳�');
gotoxy(1,10);write('� Sentido de rota��o:H(hor�rio) A (anti-hor�rio)>�  �                 �');
gotoxy(1,11);write('青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰  青陳陳陳陳陳陳陳陳�');

gotoxy(60,10);readln(sentido);
until(sentido='A')or (sentido='H') or (sentido='a') or (sentido='h');
tempo:=(1000/(RPM/3));
tempoi:=int(tempo);
pulsos:=mm*20;
pulsoi:=int(pulsos);
tempoint:=trunc(tempoi);
i:=1;
while (i<pulsoi) do
begin


if ( sentido='h') or ( sentido='H') then   port data
else if (sentido='a') or (sentido='A') then
delay (tempoint);

port[data]:={bit1}0;
{bit1:=0;}
delay(tempoint);

write('�');
i:=i+1;
resultadozero:=i mod 20;idivid20:=i/20;
if resultadozero=0 then write ('',idivid20:1:0,'');
end;

begin
textcolor(14);
textbackground(1);
clrscr;
writeln('');writeln('');writeln('');writeln('');
repeat
textcolor(13);
gotoxy(1,1);write('敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕  敖陳陳陳陳陳陳陳朕');
gotoxy(1,2);write('� quantos milimetros deseja andar em y===>       �  �                �');
gotoxy(1,3);write('青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰  青陳陳陳陳陳陳陳潰');

gotoxy(60,2);readln(mmy);
until (mmy<=500);
repeat
textcolor(14);

gotoxy(1,5);write('敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕  敖陳陳陳陳陳陳陳朕');
gotoxy(1,6);write('� Qual a rota��o do motor em RPMy(RPMy max=900)=>�  �                �');
gotoxy(1,7);write('青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰  青陳陳陳陳陳陳陳潰');

gotoxy(60,6);readln(RPMay);
RPMy:=RPMay*1;
until(RPMy<=900);
repeat
textcolor(15);
gotoxy(1,9);write('敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕  敖陳陳陳陳陳陳陳朕');
gotoxy(1,10);write('�Sentido de rota��o:H(hor�rio) A (anti-hor�rio)=>�  �                �');
gotoxy(1,11);write('青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰  青陳陳陳陳陳陳陳潰');


gotoxy(60,10);readln(sentido);
until(sentido='A')or (sentido='H') or (sentido='a') or (sentido='h');
tempoy:=(1000/(RPMy/3));
tempoiy:=int(tempoy);
pulsosy:=mmy*20;
pulsoiy:=int(pulsosy);
tempointy:=trunc(tempoiy);
iy:=1;
while (iy<pulsoiy) do
begin
if ( sentido='h') or ( sentido='H') then port[data] {bit1}:=2{8 164}
else if (sentido='a') or (sentido='A') then port[data]{bit1}:={7}3{255{48}{12};
delay (tempointy);

port[data]:={bit1}0;
{bit1:=0;}
delay(tempointy);

write('�');
iy:=iy+1;
resultadozeroy:=iy mod 20;
idivid20y:=iy/20;
if resultadozeroy=0 then write ('',idivid20y:1:0,'');
end;

begin
textcolor(14);
textbackground(1);
clrscr;
writeln('');writeln('');writeln('');writeln('');
repeat
textcolor(13);
gotoxy(1,1);write('敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕  敖陳陳陳陳陳陳陳朕');
gotoxy(1,2);write('�Quantos milimetros deseja andar em z    ====>   �  �                �');
gotoxy(1,3);write('青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰  青陳陳陳陳陳陳陳潰');


gotoxy(60,2);readln(mmz);
until (mmz<=500);
repeat
textcolor(14);
gotoxy(1,5);write('敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕  敖陳陳陳陳陳陳陳朕');
gotoxy(1,6);write('�Qual a rota��o do motor em RPMz(RPMz max=900)==>�  �                �');
gotoxy(1,7);write('青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰  青陳陳陳陳陳陳陳潰');

gotoxy(60,6);readln(RPMaz);
RPMz:=RPMaz*1;
until(RPMz<=900);
repeat
textcolor(15);
gotoxy(1,9);write('敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕  敖陳陳陳陳陳陳陳朕');
gotoxy(1,10);write('�Sentido de rota��o:H(hor�rio) A (anti-hor�rio)=>�  �                �');
gotoxy(1,11);write('青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰  青陳陳陳陳陳陳陳潰');

gotoxy(60,10);readln(sentido);
until(sentido='A')or (sentido='H') or (sentido='a') or (sentido='h');
tempoz:=(1000/(RPMz/3));
tempoiz:=int(tempoz);
pulsosz:=mmz*20;
pulsoiz:=int(pulsosz);
tempointz:=trunc(tempoiz);
iz:=1;
while (iz<pulsoiz) do

begin
if ( sentido='h') or ( sentido='H') then port[data] {bit1}:=2{8 164}
else if (sentido='a') or (sentido='A') then port[data]{bit1}:={7}3{255{48}{12};
delay (tempointz);

port[data]:={bit1}0;
{bit1:=0;}
delay(tempointz);

write('�');
iz:=iz+1;
resultadozeroz:=iz mod 20;
idivid20z:=iz/20;
if resultadozeroz=0 then write ('',idivid20z:1:0,'');
end;
{port[data]:=bit3;
bit3:=0;}
DELAY(750);

begin
Textcolor(250);
textbackground(1);
clrscr;

CLRSCR;
GOTOXY (20,6);Write('  浜様様様様様様様様様様様様様様様様様様様様様�  ');
GOTOXY (20,7);write('  �                                           �  ');
GOTOXY (20,8);write('  �            APERTE QUALQUER                �  ');
GOTOXY (20,9);write('  �                                           �  ');
GOTOXY (20,10);write('  �                 TECLA                     �  ');
GOTOXY (20,11);write('  �                                           �  ');
GOTOXY (20,12);write('  �            PARA FINALIZAR                 �  ');
GOTOXY (20,13);write('  �                                           �  ');
GOTOXY (20,14);write('  �             SEU PROGRAMA                  �  ');
GOTOXY (20,15);write('  �                                           �  ');
GOTOXY (20,16);write('  �                                           �  ');
GOTOXY (20,17);write('  藩様様様様様様様様様様様様様様様様様様様様様�  ');

READKEY;
end;
end;
END;
end;
end;
END.




