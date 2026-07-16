{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "beeswarm";
  version = "0.4.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/beeswarm_0.4.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/beeswarm/beeswarm_0.4.0.tar.gz"
    ];
    sha256 = "016mqcbdksialkmap56rprzna9b6cd6896ml9gl2n2h8yjdk7x2i";
  };

  meta = {
    description = "R package beeswarm";
    homepage = "https://cran.r-project.org/package=beeswarm";
  };
}
