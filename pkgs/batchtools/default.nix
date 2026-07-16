{
  buildRPackage,
  fetchurl,
  R6,
  backports,
  base64url,
  brew,
  checkmate,
  data_table,
  digest,
  fs,
  progress,
  rappdirs,
  stringi,
  withr,
}:

buildRPackage {
  pname = "batchtools";
  version = "0.9.18";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/batchtools_0.9.18.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/batchtools/batchtools_0.9.18.tar.gz"
    ];
    sha256 = "1kzhwz08ycx2gi23kdbqanpy4hwkykysg2pm0y9dh1jfiyzdgzs7";
  };

  propagatedBuildInputs = [
    R6
    backports
    base64url
    brew
    checkmate
    data_table
    digest
    fs
    progress
    rappdirs
    stringi
    withr
  ];

  meta = {
    description = "R package batchtools";
    homepage = "https://cran.r-project.org/package=batchtools";
  };
}
