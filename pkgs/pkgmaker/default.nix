{
  buildRPackage,
  fetchurl,
  assertthat,
  codetools,
  digest,
  registry,
  stringr,
  withr,
  xtable,
}:

buildRPackage {
  pname = "pkgmaker";
  version = "0.32.10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pkgmaker_0.32.10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pkgmaker/pkgmaker_0.32.10.tar.gz"
    ];
    sha256 = "0cr95vmsb4gkl917wg4wwq8jihvwasdg18qzhk2cq224lrrh8awp";
  };

  propagatedBuildInputs = [
    assertthat
    codetools
    digest
    registry
    stringr
    withr
    xtable
  ];

  meta = {
    description = "R package pkgmaker";
    homepage = "https://cran.r-project.org/package=pkgmaker";
  };
}
