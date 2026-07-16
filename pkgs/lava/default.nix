{
  buildRPackage,
  fetchurl,
  SQUAREM,
  cli,
  future_apply,
  numDeriv,
  progressr,
  survival,
}:

buildRPackage {
  pname = "lava";
  version = "1.9.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lava_1.9.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lava/lava_1.9.1.tar.gz"
    ];
    sha256 = "0d7mssy14bxbjpz3cak7avhww6r2pgpy7yp4a68iv329vn600y7x";
  };

  propagatedBuildInputs = [
    SQUAREM
    cli
    future_apply
    numDeriv
    progressr
    survival
  ];

  meta = {
    description = "R package lava";
    homepage = "https://cran.r-project.org/package=lava";
  };
}
