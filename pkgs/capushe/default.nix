{
  buildRPackage,
  fetchurl,
  MASS,
}:

buildRPackage {
  pname = "capushe";
  version = "1.1.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/capushe_1.1.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/capushe/capushe_1.1.3.tar.gz"
    ];
    sha256 = "1qs9fc3ypigk8pz3bq5ri1jxw6pivqj1h80kzypxff4p1l9hv91s";
  };

  propagatedBuildInputs = [
    MASS
  ];

  meta = {
    description = "R package capushe";
    homepage = "https://cran.r-project.org/package=capushe";
  };
}
