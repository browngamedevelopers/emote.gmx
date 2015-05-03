/// read 4 bytes from file

var b1,b2,b3,b4;

b1=file_bin_read_byte(file); fsize-=1;
b2=file_bin_read_byte(file); fsize-=1;
b3=file_bin_read_byte(file); fsize-=1;
b4=file_bin_read_byte(file); fsize-=1;
return (b1+b2*$100+b3*$10000+b4*$1000000)

