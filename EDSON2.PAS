program saida;
uses crt;
var
  sentido:char;
bit1,bit2,bit3,bit4,bit5,bit6,bit7,bit8:byte;
d:real;
i,tempoint:integer;
RPM,RPMa,mm,pulsoi,tempoi,tempo,pulsos,k,z,resultadozero,voltasmin, idivid20:real;

iy,tempointy:integer;
RPMy,RPMay,mmy,pulsoiy,tempoiy,tempoy,pulsosy,ky,zy
,resultadozeroy,voltasminy, idivid20y:real;

iz,tempointz:integer;
RPMz,RPMaz,mmz,pulsoiz,tempoiz,tempoz,pulsosz,kz,zz
,resultadozeroz,voltasminz, idivid20z: real;
const
data=$378;
{status= data+1;
control=data+2}
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
clrscr;
sound(500);
delay(750);
SOUND(1750);
DELAY(750);
SOUND(2500);
DELAY(750);
nosound;
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


if ( sentido='h') or ( sentido='H') then port[data] {bit1}:=2{8 164}
else if (sentido='a') or (sentido='A') then port[data]{bit1}:={7}3{255{48}{12};
delay (tempoint);

port[data]:={bit1}0;
{bit1:=0;}
delay(tempoint);

write('棍�');
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

write('桎�');
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

write('桀�');
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
sound(500);
delay(750);
SOUND(1000);
DELAY(750);
SOUND(1500);
DELAY(750);
Nosound;
writeln('');writeln('');writeln('');writeln('');

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



