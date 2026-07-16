{
  buildRPackage,
  fetchurl,
  cpp11,
  gmp,
}:

buildRPackage {
  pname = "RcppAlgos";
  version = "2.10.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcppAlgos_2.10.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcppAlgos/RcppAlgos_2.10.0.tar.gz"
    ];
    sha256 = "0iywniskrgnj5ck9adhgdzwliy05kf06y9nn3d067f8kxya60h6q";
  };

  propagatedBuildInputs = [
    cpp11
    gmp
  ];

  meta = {
    description = "R package RcppAlgos";
    homepage = "https://cran.r-project.org/package=RcppAlgos";
  };
}
