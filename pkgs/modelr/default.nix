{
  buildRPackage,
  fetchurl,
  broom,
  magrittr,
  purrr,
  rlang,
  tibble,
  tidyr,
  tidyselect,
  vctrs,
}:

buildRPackage {
  pname = "modelr";
  version = "0.1.11";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/modelr_0.1.11.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/modelr/modelr_0.1.11.tar.gz"
    ];
    sha256 = "1lvv6gac3g4x1d58chbvlxlkd77qz21a3rlb64jvzwycx43dbswl";
  };

  propagatedBuildInputs = [
    broom
    magrittr
    purrr
    rlang
    tibble
    tidyr
    tidyselect
    vctrs
  ];

  meta = {
    description = "R package modelr";
    homepage = "https://cran.r-project.org/package=modelr";
  };
}
