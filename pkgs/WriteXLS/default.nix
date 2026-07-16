{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "WriteXLS";
  version = "6.8.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/WriteXLS_6.8.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/WriteXLS/WriteXLS_6.8.0.tar.gz"
    ];
    sha256 = "1xh93xxwa6v8bbzbz6ddn0np5isir6z1dkw3cm84zdayh69bimhb";
  };

  meta = {
    description = "R package WriteXLS";
    homepage = "https://cran.r-project.org/package=WriteXLS";
  };
}
