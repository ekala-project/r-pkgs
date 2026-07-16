{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "countrycode";
  version = "1.8.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/countrycode_1.8.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/countrycode/countrycode_1.8.0.tar.gz"
    ];
    sha256 = "0nbq6fyd54sn6gcdpljcdksvwh6wdp85wwx72wc559782y91j795";
  };

  meta = {
    description = "R package countrycode";
    homepage = "https://cran.r-project.org/package=countrycode";
  };
}
