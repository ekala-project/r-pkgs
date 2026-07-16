{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "RcppThread";
  version = "2.3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcppThread_2.3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcppThread/RcppThread_2.3.0.tar.gz"
    ];
    sha256 = "0l3km4b3647gddlrkzl45vcqcj08px3jwv3fvdp8fmyb53qlpypm";
  };

  meta = {
    description = "R package RcppThread";
    homepage = "https://cran.r-project.org/package=RcppThread";
  };
}
