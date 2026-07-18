{
  core = /home/jon/projects/core-pkgs;

  lib = builtins.fetchGit {
    url = "https://github.com/ekala-project/nix-lib.git";
    rev = "9acd37c8934331a3e53a099f8755101bc2a149e2";
  };
}
