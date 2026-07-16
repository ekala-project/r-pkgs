{
  buildRPackage,
  fetchurl,
  Rcpp,
  gtools,
  proxy,
  rlist,
  tidyr,
}:

buildRPackage {
  pname = "ConsRank";
  version = "3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ConsRank_3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ConsRank/ConsRank_3.0.tar.gz"
    ];
    sha256 = "0f2k3dda1pi2sxmn12gw9az4mc3hybpvh7d48afry525r66gy7c1";
  };

  propagatedBuildInputs = [
    Rcpp
    gtools
    proxy
    rlist
    tidyr
  ];

  meta = {
    description = "R package ConsRank";
    homepage = "https://cran.r-project.org/package=ConsRank";
  };
}
