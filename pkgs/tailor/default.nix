{
  buildRPackage,
  fetchurl,
  cli,
  dplyr,
  generics,
  hardhat,
  purrr,
  rlang,
  tibble,
  tidyselect,
  vctrs,
}:

buildRPackage {
  pname = "tailor";
  version = "0.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tailor_0.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tailor/tailor_0.1.0.tar.gz"
    ];
    sha256 = "1sh1kibw28m803f1z7wy1bz6rwyshqli89gm2jni927v3agw281s";
  };

  propagatedBuildInputs = [
    cli
    dplyr
    generics
    hardhat
    purrr
    rlang
    tibble
    tidyselect
    vctrs
  ];

  meta = {
    description = "R package tailor";
    homepage = "https://cran.r-project.org/package=tailor";
  };
}
