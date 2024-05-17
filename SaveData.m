Name="NMariaPerezA";
Name_file=strcat(Name,".xlsx2");
T=table(tiempo, poshor, deshor, posver, desver, tm1, tm2);
mkdir(Name) %Creacion de carpeta
save_table = strcat("C:\Users\a01376307\Documents\MATLAB\11E\", Name);
table_path_format = fullfile(save_table, Name_file);
writetable(T,table_path_format);
t=tiempo;
x1d=desver;
x2d=deshor;
x1=posver;
x2=poshor;
tm1=tm1;
tm2=tm2;
e1=x1d-x1;
e2=x2d-x2;
t=double(t);
e1=double(e1);
e2=double(e2);
IAE1= trapz(t, abs(e1));
ISE1=trapz(t,(e1).^2);
ITAE1=trapz(t,t.*abs(e1));
ITSE1=trapz(t,t.*(e1).^2);
e1T=[IAE1;ISE1;ITAE1;ITSE1];
IAE2=trapz(t,abs(e2));
ISE2=trapz(t,(e2).^2);
ITAE2=trapz(t,t.*abs(e2));
ITSE2=trapz(t,t.*(e2).^2);
e2T=[IAE2;ISE2;ITAE2;ITSE2];
errores=["IAE";"ISE";"ITAE";"ITSE"];
table_path_format_error = fullfile(save_table, ’errores.xlsx’);
t_e=table(e1T,e2T);
writetable(t_e,table_path_format_error);
fprintf("LISTO")

