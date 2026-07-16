{
  buildRPackage,
  fetchurl,
  brio,
  desc,
  digest,
  evaluate,
  fansi,
  memoise,
  rlang,
  vctrs,
  withr,
  yaml,
}:

buildRPackage {
  pname = "downlit";
  version = "0.4.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/downlit_0.4.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/downlit/downlit_0.4.5.tar.gz"
    ];
    sha256 = "12v53da66g5l1h5g820lm6g306sky3iv1kmi9ss3hiw0i8wcx5mn";
  };

  propagatedBuildInputs = [
    brio
    desc
    digest
    evaluate
    fansi
    memoise
    rlang
    vctrs
    withr
    yaml
  ];

  meta = {
    description = "R package downlit";
    homepage = "https://cran.r-project.org/package=downlit";
  };
}
