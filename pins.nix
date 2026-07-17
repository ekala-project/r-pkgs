{
  core = builtins.fetchGit {
    url = "https://github.com/ekala-project/corepkgs.git";
    rev = "57fc60c91d2b43bfdd6588f87fa18be0e29d105c";
  };

  lib = builtins.fetchGit {
    url = "https://github.com/ekala-project/nix-lib.git";
    rev = "9acd37c8934331a3e53a099f8755101bc2a149e2";
  };
}
