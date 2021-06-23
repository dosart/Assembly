ASM = nasm
ASM_FLAGS = -f elf64 -g -F dwarf -l hello_world.lst
OBJ_MODULES = hello_world.o
PROGRAM = prog


.PHONY: clean run

$(PROGRAM): $(OBJ_MODULES)
	gcc -o $@ $^  -no-pie

%o: %asm
	$(ASM) $(ASM_FLAGS) $< -o $@


clean:
	rm -f $(PROGRAM) $(OBJ_MODULES) *.lst
	

run: $(PROGRAM)
	./$(PROGRAM)
	

