{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "RcppParallel";
  version = "5.1.11-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcppParallel_5.1.11-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcppParallel/RcppParallel_5.1.11-2.tar.gz"
    ];
    sha256 = "02wq4x5s4y1p2q55km6lllqy6m9pjyzmpz8k3dg1g06dc8yh239m";
  };

  meta = {
    description = "R package RcppParallel";
    homepage = "https://cran.r-project.org/package=RcppParallel";
  };
}
