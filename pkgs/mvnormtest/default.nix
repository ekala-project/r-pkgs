{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "mvnormtest";
  version = "0.1-9-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mvnormtest_0.1-9-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mvnormtest/mvnormtest_0.1-9-3.tar.gz"
    ];
    sha256 = "1hxxy08ldm2dczjfb34q1xk8yfs54pdishq4hnws8xy0cjh4xngg";
  };

  meta = {
    description = "R package mvnormtest";
    homepage = "https://cran.r-project.org/package=mvnormtest";
  };
}
