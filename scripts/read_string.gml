/// read string from file

ctr=file_bin_read_byte(file); fsize-=1;
res=''
while (ctr>0)
{
    z=file_bin_read_byte(file); fsize-=1; ctr-=1;
    res+=(chr(z));
}
return (res)

