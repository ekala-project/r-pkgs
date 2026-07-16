{
  buildRPackage,
  fetchurl,
  rlang,
  withr,
}:

buildRPackage {
  pname = "mockr";
  version = "0.2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mockr_0.2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mockr/mockr_0.2.2.tar.gz"
    ];
    sha256 = "0bbrsgw4nb9265zrb45nxjk0xgmxkykvyv2ygcq1j3jrqqh9a688";
  };

  propagatedBuildInputs = [
    rlang
    withr
  ];

  meta = {
    description = "R package mockr";
    homepage = "https://cran.r-project.org/package=mockr";
  };
}
