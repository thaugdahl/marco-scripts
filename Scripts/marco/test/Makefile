.PHONY: clean FORCE

LIBFLAGS:=-L$(MARCO_RUNTIME_INSTALL_PATH)/lib

MOOPT:=/home/tor/Dev/marco/source/marco/build/bin/modelica-opt

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
	${MOOPT} --pass-pipeline='builtin.module(data-recomputation{dr-test-diagnostics})' thermalchip.mlir

debug-tc:
	gdb -x commands.gdb --args ${MOOPT} --pass-pipeline='builtin.module(data-recomputation{})' thermalchip.mlir

run-test:
	${MOOPT} --pass-pipeline='builtin.module(data-recomputation{})' test.mlir

debug-test:
	gdb -x commands.gdb --args ${MOOPT} --pass-pipeline='builtin.module(data-recomputation{})' test.mlir

run-forwarded:
	${MOOPT} --pass-pipeline='builtin.module(data-recomputation{})' forwarded-reinterpreted-memref.mlir

debug-forwarded:
	gdb -x commands.gdb --args ${MOOPT} --pass-pipeline='builtin.module(data-recomputation{})' forwarded-reinterpreted-memref.mlir

run-methanol:
	${MOOPT} --pass-pipeline='builtin.module(data-recomputation{})' methanol.mlir

debug-methanol:
	gdb -x commands.gdb --args ${MOOPT} --pass-pipeline='builtin.module(data-recomputation{})' methanol.mlir

clean:
	rm test
