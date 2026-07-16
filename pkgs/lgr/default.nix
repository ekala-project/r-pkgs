{
  buildRPackage,
  fetchurl,
  R6,
}:

buildRPackage {
  pname = "lgr";
  version = "0.5.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lgr_0.5.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lgr/lgr_0.5.2.tar.gz"
    ];
    sha256 = "0wr2i7lxssayk0q17nqv614afmzqwvdkm601m2ycpqdk550y6ja6";
  };

  propagatedBuildInputs = [
    R6
  ];

  meta = {
    description = "R package lgr";
    homepage = "https://cran.r-project.org/package=lgr";
  };
}
