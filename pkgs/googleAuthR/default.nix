{
  buildRPackage,
  fetchurl,
  assertthat,
  cli,
  digest,
  gargle,
  httr,
  jsonlite,
  memoise,
  rlang,
}:

buildRPackage {
  pname = "googleAuthR";
  version = "2.0.2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/googleAuthR_2.0.2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/googleAuthR/googleAuthR_2.0.2.1.tar.gz"
    ];
    sha256 = "0zp0p71g7j7fq3kny971nc9zricxp30hd2nkzzlq9cwz33hzgm60";
  };

  propagatedBuildInputs = [
    assertthat
    cli
    digest
    gargle
    httr
    jsonlite
    memoise
    rlang
  ];

  meta = {
    description = "R package googleAuthR";
    homepage = "https://cran.r-project.org/package=googleAuthR";
  };
}
