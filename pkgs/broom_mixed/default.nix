{
  buildRPackage,
  fetchurl,
  broom,
  coda,
  dplyr,
  forcats,
  furrr,
  nlme,
  purrr,
  stringr,
  tibble,
  tidyr,
}:

buildRPackage {
  pname = "broom_mixed";
  version = "0.2.9.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/broom_mixed_0.2.9.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/broom_mixed/broom_mixed_0.2.9.7.tar.gz"
    ];
    sha256 = "0hcnp9p9412a38n0q49yvmsbv6wzbwdwv825cgj0rpf3a8izmf11";
  };

  propagatedBuildInputs = [
    broom
    coda
    dplyr
    forcats
    furrr
    nlme
    purrr
    stringr
    tibble
    tidyr
  ];

  meta = {
    description = "R package broom_mixed";
    homepage = "https://cran.r-project.org/package=broom_mixed";
  };
}
