{
  buildRPackage,
  fetchurl,
  R6,
  callr,
  cli,
  crayon,
  dplyr,
  magrittr,
  qs2,
  rlang,
  tibble,
  tidyselect,
  vctrs,
}:

buildRPackage {
  pname = "multidplyr";
  version = "0.1.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/multidplyr_0.1.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/multidplyr/multidplyr_0.1.4.tar.gz"
    ];
    sha256 = "1wqx7szj5znh35vw7hi239whb6bakic3ffg4k2zrlf4lxhg44lbs";
  };

  propagatedBuildInputs = [
    R6
    callr
    cli
    crayon
    dplyr
    magrittr
    qs2
    rlang
    tibble
    tidyselect
    vctrs
  ];

  meta = {
    description = "R package multidplyr";
    homepage = "https://cran.r-project.org/package=multidplyr";
  };
}
