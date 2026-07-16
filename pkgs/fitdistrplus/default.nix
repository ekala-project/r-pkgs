{
  buildRPackage,
  fetchurl,
  MASS,
  rlang,
  survival,
}:

buildRPackage {
  pname = "fitdistrplus";
  version = "1.2-6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fitdistrplus_1.2-6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fitdistrplus/fitdistrplus_1.2-6.tar.gz"
    ];
    sha256 = "1399i66f09zbd4zl2fdps1dq5vyaw71ayz8qh3kp17r20dixkdz8";
  };

  propagatedBuildInputs = [
    MASS
    rlang
    survival
  ];

  meta = {
    description = "R package fitdistrplus";
    homepage = "https://cran.r-project.org/package=fitdistrplus";
  };
}
