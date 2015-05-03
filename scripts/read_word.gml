/// read 2 bytes from file

var b1,b2;
b1=file_bin_read_byte(file); fsize-=1;
b2=file_bin_read_byte(file); fsize-=1;
return (b1+b2*$100)
