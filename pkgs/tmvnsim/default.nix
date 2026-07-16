{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "tmvnsim";
  version = "1.0-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tmvnsim_1.0-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tmvnsim/tmvnsim_1.0-2.tar.gz"
    ];
    sha256 = "03xsvsg9bqvgl98ywid3h91mmlhax5s6wvmypp3hq91vmc5kvxlp";
  };

  meta = {
    description = "R package tmvnsim";
    homepage = "https://cran.r-project.org/package=tmvnsim";
  };
}
