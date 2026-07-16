{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "bio3d";
  version = "2.4-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bio3d_2.4-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bio3d/bio3d_2.4-5.tar.gz"
    ];
    sha256 = "0k6ji9n0pbkbvrinx3x2av39gmkp9ik2bgf9nqx11nv49nkff9rx";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package bio3d";
    homepage = "https://cran.r-project.org/package=bio3d";
  };
}
