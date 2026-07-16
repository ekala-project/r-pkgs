{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "pspline";
  version = "1.0-21";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pspline_1.0-21.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pspline/pspline_1.0-21.tar.gz"
    ];
    sha256 = "1jmb710jcrdmv8lhgb3xixrglamfhigjn59xsdndm39prywkjmvz";
  };

  meta = {
    description = "R package pspline";
    homepage = "https://cran.r-project.org/package=pspline";
  };
}
