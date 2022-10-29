program project1;  //enter a number and the programm will give you all mysterious numbers less or equal to your number

function num_chiff(num:integer):integer;
var
   i,po,puiss,l:integer;
   begin
     po:=0;
  puiss:=1;
     repeat
      l:=num div 10;
      num:=num div 10;
      po:=po+1;
  until (l=0) and (num mod 10 =0) ;
  num_chiff:=po;
   end;
function sam_num(num1,num2:integer):boolean;
var  boubou:boolean; j,nn2,nn3,i,mm2,mm3,ss,p,b,b1,x,y,num,num3,d:integer;
begin
  b:=0;
  p:=1;
  b1:=0;
  ss:=num2;
  x:=num_chiff(num1);
  y:=num_chiff(num2);
  d:=num_chiff(num2);
   if num_chiff(num1)<>num_chiff(num2) then  boubou:=false
   else for j:=1 to d do
    begin
       nn2:=num1 div 10;
      nn3:=num1 mod 10;
      for i:=1 to d do
       begin
         mm2:=num2 div 10;
         mm3:=num2 mod 10;
         if mm3=nn3 then begin b:=b+1;
         end;
         if b=1 then break;
         num2:=num2 div 10;
       end;
      num2:=ss;
      if b=1 then b1:=b1+1;
      b:=0;
       num1:= num1 div 10;
    end;
      if b1=x then  boubou:=true
      else if (b1<>x) and (x=y) then  boubou:=false;
         sam_num:=boubou;
end;
function puiss(num:integer):integer;
    var i,pui:integer;
     begin
         pui:=1;
     for i:=1 to num_chiff(num) do
   begin
     pui:=pui*10;
 end;
  puiss:=pui div 10;
  end;
function inverse(num:integer):integer;
var i,n1,n2,n3,n4,s,p:integer;
   begin
   s:=0;
   p:=puiss(num);
   for i:=1 to num_chiff(num) do
   begin
     n1:=num div 10;
     n2:=num mod 10;
     s:=s+ n2*p;
     p:=p div 10;
     num:=num div 10;
   end;
   inverse:=s;
   end;
function carre(num:integer):integer;
begin
carre:=num*num;
end;

var
     num,i:integer;
begin
  write('please enter a number : ');
  readln(num);
  for i:=1 to num do if sam_num(carre(inverse(i)),carre(i))=true then writeln(i);
   readln;
end.

