{
  buildRPackage,
  fetchurl,
  MASS,
  gamlss_data,
  gamlss_dist,
  nlme,
  survival,
}:

buildRPackage {
  pname = "gamlss";
  version = "5.5-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gamlss_5.5-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gamlss/gamlss_5.5-0.tar.gz"
    ];
    sha256 = "0xjrm7ara0z8j3zg2502sfzw9cwk8sa353jnwljlfz9prbjwvdx0";
  };

  propagatedBuildInputs = [
    MASS
    gamlss_data
    gamlss_dist
    nlme
    survival
  ];

  meta = {
    description = "R package gamlss";
    homepage = "https://cran.r-project.org/package=gamlss";
  };
}
