{
  buildRPackage,
  fetchurl,
  MASS,
}:

buildRPackage {
  pname = "ppcor";
  version = "1.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ppcor_1.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ppcor/ppcor_1.1.tar.gz"
    ];
    sha256 = "1x9b2kb8s0bp92b17gby0jwzzr3i4cf3ap9c4nq7m8fav72g0y3a";
  };

  propagatedBuildInputs = [
    MASS
  ];

  meta = {
    description = "R package ppcor";
    homepage = "https://cran.r-project.org/package=ppcor";
  };
}
