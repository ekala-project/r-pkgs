{
  buildRPackage,
  fetchurl,
  quadprog,
}:

buildRPackage {
  pname = "directlabels";
  version = "2026.4.23";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/directlabels_2026.4.23.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/directlabels/directlabels_2026.4.23.tar.gz"
    ];
    sha256 = "1qh4h2gl7i7f4czf15mm98126hh3cdsfys6j8dka75cb4k9al5j9";
  };

  propagatedBuildInputs = [
    quadprog
  ];

  meta = {
    description = "R package directlabels";
    homepage = "https://cran.r-project.org/package=directlabels";
  };
}
