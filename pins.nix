{
  core = builtins.fetchGit {
    url = "https://github.com/ekala-project/corepkgs.git";
    rev = "e4dd52af6f6329bffc97ec5ec782b5b30037f701";
  };

  lib = builtins.fetchGit {
    url = "https://github.com/ekala-project/nix-lib.git";
    rev = "548c00d7b27d7363b734e1cf9acb06136c1ee4cb";
  };
}
