{
  buildRPackage,
  fetchurl,
  MASS,
}:

buildRPackage {
  pname = "class";
  version = "7.3-23";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/class_7.3-23.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/class/class_7.3-23.tar.gz"
    ];
    sha256 = "1wci521c81q500rwcsm8q1s307fxfx8pjvai85bg2ig0x89dn6jd";
  };

  propagatedBuildInputs = [
    MASS
  ];

  meta = {
    description = "R package class";
    homepage = "https://cran.r-project.org/package=class";
  };
}
