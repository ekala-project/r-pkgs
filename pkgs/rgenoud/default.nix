{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rgenoud";
  version = "5.9-0.11";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rgenoud_5.9-0.11.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rgenoud/rgenoud_5.9-0.11.tar.gz"
    ];
    sha256 = "12pf7kvyvly0aqrk84k07cx7gnqmnrpfzs41ys960gx70lzf77f6";
  };

  meta = {
    description = "R package rgenoud";
    homepage = "https://cran.r-project.org/package=rgenoud";
  };
}
