{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "flock";
  version = "0.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/flock_0.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/flock/flock_0.7.tar.gz"
    ];
    sha256 = "1zg93p74icj4bhxnmnssj2xp6vw4yaksyavq03497v33xfpdxss7";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package flock";
    homepage = "https://cran.r-project.org/package=flock";
  };
}
