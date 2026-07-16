{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "brio";
  version = "1.1.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/brio_1.1.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/brio/brio_1.1.5.tar.gz"
    ];
    sha256 = "1f6hh7mck4bb1caivcvr6ms2pyqzzzawqyxjbgi9s0rrx8sj7wm9";
  };

  meta = {
    description = "R package brio";
    homepage = "https://cran.r-project.org/package=brio";
  };
}
