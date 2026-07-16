{
  buildRPackage,
  fetchurl,
  digest,
  httr2,
  jsonlite,
  rlang,
  testthat,
}:

buildRPackage {
  pname = "httptest2";
  version = "1.2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/httptest2_1.2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/httptest2/httptest2_1.2.2.tar.gz"
    ];
    sha256 = "10xvm5axc3mij66cs4rvwd37zivgns4793xwazxq1pbqqnwg492n";
  };

  propagatedBuildInputs = [
    digest
    httr2
    jsonlite
    rlang
    testthat
  ];

  meta = {
    description = "R package httptest2";
    homepage = "https://cran.r-project.org/package=httptest2";
  };
}
