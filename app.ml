let of_file file =
  Config_j.t_of_string (Core.Std.In_channel.read_all file)

let () =
  let config_file = Sys.argv.(1) in
  let config = of_file config_file in
  let open Printf in
  let open Config_j in
  printf "config file: %s\n" config_file;
  printf "postgres.host: %s\n" config.postgres.host;
  printf "postgres.port: %d\n" config.postgres.port;
  printf "postgres.database: %s\n" config.postgres.database;
  printf "postgres.user: %s\n" config.postgres.user;
  printf "lib_dir: %s\n" config.lib_dir;
  printf "temp_dir: %s\n" config.temp_dir
