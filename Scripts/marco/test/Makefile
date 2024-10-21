.PHONY: clean

LIBFLAGS:=-L$(MARCO_RUNTIME_INSTALL_PATH)/lib

ifndef SUNDIALS_PATH
error 2
endif

ifneq "$(SUNDIALS_PATH)" "/usr/lib"
LIBFLAGS+= -L$(SUNDIALS_PATH)/lib
endif

test: test.mo
	marco --omc-bypass $(LIBFLAGS) $< -o $@


clean:
	rm test
