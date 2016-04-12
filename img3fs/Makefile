img3fs: img3fs.c
	gcc -o $@ $^ -Wall -L/usr/local/lib/ -lfuse_ino64 -lcrypto -I/usr/local/include/osxfuse -I/usr/local/Cellar/openssl/1.0.2a-1/include || gcc -o $@ $^ -Wall -L/usr/local/lib/ -losxfuse_i64 -lcrypto -I/usr/local/Cellar/openssl/1.    0.2a-1/include -I/usr/local/include/osxfuse
clean:
	rm img3fs
