{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "nortest";
  version = "1.0-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/nortest_1.0-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/nortest/nortest_1.0-4.tar.gz"
    ];
    sha256 = "17r0wpz72z9312c70nwi1i1kp1v9fm1h6jg7q5cx1mc1h420m1d3";
  };

  meta = {
    description = "R package nortest";
    homepage = "https://cran.r-project.org/package=nortest";
  };
}
