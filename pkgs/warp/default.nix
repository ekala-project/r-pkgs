{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "warp";
  version = "0.2.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/warp_0.2.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/warp/warp_0.2.3.tar.gz"
    ];
    sha256 = "0ahiv9mjcm33jl503l07aa1abja4klmm31rd4ia1fpgaj15l1wxx";
  };

  meta = {
    description = "R package warp";
    homepage = "https://cran.r-project.org/package=warp";
  };
}
