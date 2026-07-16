{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "tictoc";
  version = "1.2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tictoc_1.2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tictoc/tictoc_1.2.1.tar.gz"
    ];
    sha256 = "0cw8r1gn4p2v1l3d80brk9sfr9nyckyyym5nr9xq3d74l74vgkcg";
  };

  meta = {
    description = "R package tictoc";
    homepage = "https://cran.r-project.org/package=tictoc";
  };
}
