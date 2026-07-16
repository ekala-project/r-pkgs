{
  buildRPackage,
  fetchurl,
  boot,
}:

buildRPackage {
  pname = "pastecs";
  version = "1.4.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pastecs_1.4.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pastecs/pastecs_1.4.2.tar.gz"
    ];
    sha256 = "1y3nngdmslbs1rls0n2nbx8jpp9z3nvv11w1z6rff6v0ky05ddj3";
  };

  propagatedBuildInputs = [
    boot
  ];

  meta = {
    description = "R package pastecs";
    homepage = "https://cran.r-project.org/package=pastecs";
  };
}
