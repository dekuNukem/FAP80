Currently there are two ways to program FAP80.


One is to do it directly in Z80 assembly, cross assemble using zmacs and then upload into FAP. Examples and details are in [zmacs folder](./zmac_example).


The other way is write in C, then use SDCC to compile and assemble, then upload. Being able to use C makes it much simpler to program, however the result might be slower than pure assembly, and it's not as easy to debug. Examples and details are in [sdcc folder](./sdcc_example)