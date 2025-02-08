{
  system,
  pkgs,
  command,
}: inputFile: let
  bash = "${pkgs.bash}/bin/bash";
  env = "${pkgs.coreutils}/bin/env";
in
  derivation {
    inherit system;
    name = "yaml-convert";
    builder = env;
    args = ["file=${inputFile}" bash "-c" "${command} >$out"];
  }
