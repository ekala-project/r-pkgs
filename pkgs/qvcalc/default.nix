{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "qvcalc";
  version = "1.0.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/qvcalc_1.0.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/qvcalc/qvcalc_1.0.4.tar.gz"
    ];
    sha256 = "0ngvv9jr2q92cdd38x08nm81hwhcnbx9gwv7s2xsd0kflnnkqh4h";
  };

  meta = {
    description = "R package qvcalc";
    homepage = "https://cran.r-project.org/package=qvcalc";
  };
}
