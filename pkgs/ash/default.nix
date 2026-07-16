{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "ash";
  version = "1.0-15";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ash_1.0-15.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ash/ash_1.0-15.tar.gz"
    ];
    sha256 = "1ay2a2agdmiz7zzvn26mli0x0iwk09g5pp4yy1r23knhkp1pn2lb";
  };

  meta = {
    description = "R package ash";
    homepage = "https://cran.r-project.org/package=ash";
  };
}
