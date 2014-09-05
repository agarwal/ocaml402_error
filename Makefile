.PHONY: all run_atd clean

all: app.native app.byte

run_atd: config.atd
	atdgen -t config.atd
	atdgen -j config.atd

app.native: run_atd
	ocamlfind ocamlopt -package atdgen -thread -linkpkg config_t.mli config_t.ml config_j.mli config_j.ml app.ml -o app.native

app.byte: run_atd
	ocamlfind ocamlc -package atdgen -thread -linkpkg config_t.mli config_t.ml config_j.mli config_j.ml app.ml -o app.byte

clean:
	rm -f *.cm* *.o config_j.* config_t.* app.native app.byte
