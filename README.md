```
$ opam switch 4.02.0; eval `opam config env`
$ make clean; make; ./app.native test.json
rm -f *.cm* *.o config_j.* config_t.* app.native app.byte
atdgen -t config.atd
atdgen -j config.atd
ocamlfind ocamlopt -package core,atdgen -thread -linkpkg config_t.mli config_t.ml config_j.mli config_j.ml app.ml -o app.native
ocamlfind ocamlc -package core,atdgen -thread -linkpkg config_t.mli config_t.ml config_j.mli config_j.ml app.ml -o app.byte
Segmentation fault: 11
```

```
$ opam switch 4.01.0; eval `opam config env`
$ make clean; make; ./app.native test.json
# To complete the configuration of OPAM, you need to run:
eval `opam config env`
rm -f *.cm* *.o config_j.* config_t.* app.native app.byte
atdgen -t config.atd
atdgen -j config.atd
ocamlfind ocamlopt -package core,atdgen -thread -linkpkg config_t.mli config_t.ml config_j.mli config_j.ml app.ml -o app.native
ocamlfind ocamlc -package core,atdgen -thread -linkpkg config_t.mli config_t.ml config_j.mli config_j.ml app.ml -o app.byte
config file: test.json
postgres.host: localhost
postgres.port: 5432
postgres.database: dev-db
postgres.user: alice
lib_dir: ./lib/
temp_dir: ./tmp/
```
