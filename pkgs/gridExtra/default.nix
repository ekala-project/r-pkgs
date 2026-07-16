{
  buildRPackage,
  fetchurl,
  gtable,
}:

buildRPackage {
  pname = "gridExtra";
  version = "2.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gridExtra_2.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gridExtra/gridExtra_2.3.tar.gz"
    ];
    sha256 = "0fwfk3cdwxxim7nd55pn7m31bcaqj48y06j7an2k1v1pybk0rdl1";
  };

  propagatedBuildInputs = [
    gtable
  ];

  meta = {
    description = "R package gridExtra";
    homepage = "https://cran.r-project.org/package=gridExtra";
  };
}
