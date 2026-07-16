{
  buildRPackage,
  fetchurl,
  MASS,
  cli,
  dplyr,
  purrr,
  rlang,
  tibble,
}:

buildRPackage {
  pname = "modeldata";
  version = "1.5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/modeldata_1.5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/modeldata/modeldata_1.5.1.tar.gz"
    ];
    sha256 = "1767lqrd0jkgmv83k62jarhydc1glnxvyr5vmlzrjdlaip1n1dzp";
  };

  propagatedBuildInputs = [
    MASS
    cli
    dplyr
    purrr
    rlang
    tibble
  ];

  meta = {
    description = "R package modeldata";
    homepage = "https://cran.r-project.org/package=modeldata";
  };
}
