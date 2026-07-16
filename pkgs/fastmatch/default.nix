{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "fastmatch";
  version = "1.1-8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fastmatch_1.1-8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fastmatch/fastmatch_1.1-8.tar.gz"
    ];
    sha256 = "0m4dfhzqksv0h7gkgs7hnnfk5wb87fyfch7r1fiz90r3vhdw0q96";
  };

  meta = {
    description = "R package fastmatch";
    homepage = "https://cran.r-project.org/package=fastmatch";
  };
}
