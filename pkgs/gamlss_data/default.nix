{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "gamlss_data";
  version = "6.0-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gamlss_data_6.0-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gamlss_data/gamlss_data_6.0-7.tar.gz"
    ];
    sha256 = "0wb7v1qylzpzyszqnn7kr67sx6zpywya4z2q5nlxx9j16m2w4a40";
  };

  meta = {
    description = "R package gamlss_data";
    homepage = "https://cran.r-project.org/package=gamlss_data";
  };
}
