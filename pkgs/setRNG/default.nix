{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "setRNG";
  version = "2024.2-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/setRNG_2024.2-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/setRNG/setRNG_2024.2-1.tar.gz"
    ];
    sha256 = "0h2wbpsi07c48h72zjglvp9b58hq3j77289sah32qg6vnw41pcp3";
  };

  meta = {
    description = "R package setRNG";
    homepage = "https://cran.r-project.org/package=setRNG";
  };
}
