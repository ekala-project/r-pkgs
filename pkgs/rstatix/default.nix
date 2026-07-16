{
  buildRPackage,
  fetchurl,
  broom,
  car,
  corrplot,
  dplyr,
  generics,
  magrittr,
  purrr,
  rlang,
  tibble,
  tidyr,
  tidyselect,
}:

buildRPackage {
  pname = "rstatix";
  version = "0.7.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rstatix_0.7.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rstatix/rstatix_0.7.3.tar.gz"
    ];
    sha256 = "03qfr2ggk284g1iz3vdzd621fdyzjy7lzsd9mwzdnbjqg1j91a5w";
  };

  propagatedBuildInputs = [
    broom
    car
    corrplot
    dplyr
    generics
    magrittr
    purrr
    rlang
    tibble
    tidyr
    tidyselect
  ];

  meta = {
    description = "R package rstatix";
    homepage = "https://cran.r-project.org/package=rstatix";
  };
}
