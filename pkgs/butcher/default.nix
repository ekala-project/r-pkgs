{
  buildRPackage,
  fetchurl,
  cli,
  lobstr,
  purrr,
  rlang,
  tibble,
  vctrs,
}:

buildRPackage {
  pname = "butcher";
  version = "0.4.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/butcher_0.4.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/butcher/butcher_0.4.0.tar.gz"
    ];
    sha256 = "0z03vzs0dvvnxzk2gwzx2fjjzf1jzkqap6w7cvxk2f4ra2l4pjm5";
  };

  propagatedBuildInputs = [
    cli
    lobstr
    purrr
    rlang
    tibble
    vctrs
  ];

  meta = {
    description = "R package butcher";
    homepage = "https://cran.r-project.org/package=butcher";
  };
}
