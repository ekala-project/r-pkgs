{
  buildRPackage,
  fetchurl,
  cli,
  rlang,
}:

buildRPackage {
  pname = "svMisc";
  version = "1.4.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/svMisc_1.4.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/svMisc/svMisc_1.4.3.tar.gz"
    ];
    sha256 = "0sjqc3bxah1a0zmsyla0pnbpsjzpzqsphpiy9j42fh7bj8qg6z3k";
  };

  propagatedBuildInputs = [
    cli
    rlang
  ];

  meta = {
    description = "R package svMisc";
    homepage = "https://cran.r-project.org/package=svMisc";
  };
}
