all:
	mkdir -p bin
	gcc -Wall -shared -o bin/yagal.so src/evaluator.c

