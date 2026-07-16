{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "mcmc";
  version = "0.9-8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mcmc_0.9-8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mcmc/mcmc_0.9-8.tar.gz"
    ];
    sha256 = "19vfh868lr4a491gc2x2b2xs83gldw294zbl4bqsgs2q9c6l81ka";
  };

  meta = {
    description = "R package mcmc";
    homepage = "https://cran.r-project.org/package=mcmc";
  };
}
