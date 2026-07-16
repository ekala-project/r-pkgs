{
  buildRPackage,
  fetchurl,
  testthat,
}:

buildRPackage {
  pname = "mockery";
  version = "0.4.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mockery_0.4.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mockery/mockery_0.4.5.tar.gz"
    ];
    sha256 = "1m34pjz1ahnni3k9x5cy07m2a0lp3117bh94l8lpxv08x4j8959s";
  };

  propagatedBuildInputs = [
    testthat
  ];

  meta = {
    description = "R package mockery";
    homepage = "https://cran.r-project.org/package=mockery";
  };
}
