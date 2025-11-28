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
	modelica-opt --pass-pipeline='builtin.module(data-recomputation{dr-test-diagnostics})' thermalchip.mlir

debug-tc:
	gdb -x commands.gdb --args modelica-opt --pass-pipeline='builtin.module(data-recomputation{})' thermalchip.mlir

run-test:
	modelica-opt --pass-pipeline='builtin.module(data-recomputation{})' test.mlir

debug-test:
	gdb -x commands.gdb --args modelica-opt --pass-pipeline='builtin.module(data-recomputation{})' test.mlir

run-forwarded:
	modelica-opt --pass-pipeline='builtin.module(data-recomputation{})' forwarded-reinterpreted-memref.mlir

debug-forwarded:
	gdb -x commands.gdb --args modelica-opt --pass-pipeline='builtin.module(data-recomputation{})' forwarded-reinterpreted-memref.mlir

run-methanol:
	modelica-opt --pass-pipeline='builtin.module(data-recomputation{})' methanol.mlir

debug-methanol:
	gdb -x commands.gdb --args modelica-opt --pass-pipeline='builtin.module(data-recomputation{})' methanol.mlir

clean:
	rm test
