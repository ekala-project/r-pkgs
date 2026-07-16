{
  buildRPackage,
  fetchurl,
  robslopes,
}:

buildRPackage {
  pname = "mcr";
  version = "1.3.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mcr_1.3.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mcr/mcr_1.3.3.1.tar.gz"
    ];
    sha256 = "0gbpnbs8mgqpyiayddcaf1xwh908gk1n375bqpnvfppyj0wz3yr9";
  };

  propagatedBuildInputs = [
    robslopes
  ];

  meta = {
    description = "R package mcr";
    homepage = "https://cran.r-project.org/package=mcr";
  };
}
