module test();
    int file;
    int bytes_read;
    bit [31:0] chunk;

    initial begin
        file = $fopen("test.bin","rb");
        // $display("file = %d", file);
        bytes_read = $fread(chunk, file, 4);
        $display("chunk = %b and bytes read = %0d", chunk, bytes_read);
    end
      
endmodule