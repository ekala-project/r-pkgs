{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "survivalROC";
  version = "1.0.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/survivalROC_1.0.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/survivalROC/survivalROC_1.0.3.1.tar.gz"
    ];
    sha256 = "0p6irjs8a9xxgxwax0y9fzapcib237if3iy8g6lzv793mzmsyx41";
  };

  meta = {
    description = "R package survivalROC";
    homepage = "https://cran.r-project.org/package=survivalROC";
  };
}
