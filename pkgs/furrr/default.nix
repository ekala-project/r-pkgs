{
  buildRPackage,
  fetchurl,
  future,
  globals,
  purrr,
  rlang,
  vctrs,
}:

buildRPackage {
  pname = "furrr";
  version = "0.4.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/furrr_0.4.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/furrr/furrr_0.4.0.tar.gz"
    ];
    sha256 = "0577zh7brip2yvh1rx5ks32qnslk3flpiacfvy5rdppxg20d3y42";
  };

  propagatedBuildInputs = [
    future
    globals
    purrr
    rlang
    vctrs
  ];

  meta = {
    description = "R package furrr";
    homepage = "https://cran.r-project.org/package=furrr";
  };
}
