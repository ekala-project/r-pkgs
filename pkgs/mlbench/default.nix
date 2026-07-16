{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "mlbench";
  version = "2.1-8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mlbench_2.1-8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mlbench/mlbench_2.1-8.tar.gz"
    ];
    sha256 = "1psr8rnaqiaxc07g5i6d935lrvn15hscvxn68z261w1x14vy789c";
  };

  meta = {
    description = "R package mlbench";
    homepage = "https://cran.r-project.org/package=mlbench";
  };
}
