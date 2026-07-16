{
  buildRPackage,
  fetchurl,
  RcppRoll,
  forecast,
  fracdiff,
  furrr,
  future,
  purrr,
  tibble,
  tseries,
  urca,
}:

buildRPackage {
  pname = "tsfeatures";
  version = "1.1.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tsfeatures_1.1.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tsfeatures/tsfeatures_1.1.1.tar.gz"
    ];
    sha256 = "1z0c1pc2hsw76qwy6nibp1dnmk5vq495g2b81j844ajma6gj7ssy";
  };

  propagatedBuildInputs = [
    RcppRoll
    forecast
    fracdiff
    furrr
    future
    purrr
    tibble
    tseries
    urca
  ];

  meta = {
    description = "R package tsfeatures";
    homepage = "https://cran.r-project.org/package=tsfeatures";
  };
}
