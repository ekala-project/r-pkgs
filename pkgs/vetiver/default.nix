{
  buildRPackage,
  fetchurl,
  bundle,
  butcher,
  cereal,
  cli,
  fs,
  generics,
  glue,
  hardhat,
  lifecycle,
  pins,
  purrr,
  rapidoc,
  readr,
  rlang,
  tibble,
  vctrs,
  withr,
}:

buildRPackage {
  pname = "vetiver";
  version = "0.2.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/vetiver_0.2.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/vetiver/vetiver_0.2.7.tar.gz"
    ];
    sha256 = "1nqs5panpqr2ga3nz2hbmngrrklbjdqqlh8xd572yvvca57wm8ak";
  };

  propagatedBuildInputs = [
    bundle
    butcher
    cereal
    cli
    fs
    generics
    glue
    hardhat
    lifecycle
    pins
    purrr
    rapidoc
    readr
    rlang
    tibble
    vctrs
    withr
  ];

  meta = {
    description = "R package vetiver";
    homepage = "https://cran.r-project.org/package=vetiver";
  };
}
