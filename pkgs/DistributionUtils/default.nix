{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "DistributionUtils";
  version = "0.6-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/DistributionUtils_0.6-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/DistributionUtils/DistributionUtils_0.6-2.tar.gz"
    ];
    sha256 = "01fand751znsv519naldrii598yw3jlgjkws0v8h3mggr4jib3l0";
  };

  meta = {
    description = "R package DistributionUtils";
    homepage = "https://cran.r-project.org/package=DistributionUtils";
  };
}
