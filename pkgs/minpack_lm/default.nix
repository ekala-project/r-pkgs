{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "minpack_lm";
  version = "1.2-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/minpack_lm_1.2-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/minpack_lm/minpack_lm_1.2-4.tar.gz"
    ];
    sha256 = "0cg7arnmb7x6v5x487gkc2k4i5gchgdwblrrd0k0vw1w6pza83z3";
  };

  meta = {
    description = "R package minpack_lm";
    homepage = "https://cran.r-project.org/package=minpack_lm";
  };
}
