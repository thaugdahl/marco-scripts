.PHONY: clean FORCE

LIBFLAGS:=-L$(MARCO_RUNTIME_INSTALL_PATH)/lib

# ifndef SUNDIALS_PATH
# error 2
# endif
#
# ifneq "$(SUNDIALS_PATH)" "/usr/lib"
# LIBFLAGS+= -L$(SUNDIALS_PATH)/lib
# endif

test: test.mo FORCE
	marco --omc-bypass --solver=euler-forward $(LIBFLAGS) test.mo -o $@

debug: test.mo FORCE
	# gdb --command=commands.gdb --args marco --omc-bypass --solver=euler-forward $(LIBFLAGS) test.mo -o $@
	gdb --args marco --omc-bypass --solver=euler-forward $(LIBFLAGS) test.mo -o $@

run-tc:
	modelica-opt --pass-pipeline='builtin.module(data-recomputation{})' thermalchip.mlir

debug-tc:
	gdb -x commands.gdb --args modelica-opt --pass-pipeline='builtin.module(data-recomputation{})' thermalchip.mlir

clean:
	rm test
