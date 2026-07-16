{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "nanoparquet";
  version = "0.5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/nanoparquet_0.5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/nanoparquet/nanoparquet_0.5.1.tar.gz"
    ];
    sha256 = "0wcmd19cfn168pi893mrhnphryyc8hy6y49d7ai626zfj94m32a1";
  };

  meta = {
    description = "R package nanoparquet";
    homepage = "https://cran.r-project.org/package=nanoparquet";
  };
}
