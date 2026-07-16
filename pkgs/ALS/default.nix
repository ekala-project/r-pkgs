{
  buildRPackage,
  fetchurl,
  Iso,
  nnls,
}:

buildRPackage {
  pname = "ALS";
  version = "0.0.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ALS_0.0.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ALS/ALS_0.0.7.tar.gz"
    ];
    sha256 = "184d6xr4mgs78jvi7xa4njrq6p625i9sx69wak6mdn53qpl9b8ap";
  };

  propagatedBuildInputs = [
    Iso
    nnls
  ];

  meta = {
    description = "R package ALS";
    homepage = "https://cran.r-project.org/package=ALS";
  };
}
