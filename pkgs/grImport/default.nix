{
  buildRPackage,
  fetchurl,
  XML,
}:

buildRPackage {
  pname = "grImport";
  version = "0.9-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/grImport_0.9-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/grImport/grImport_0.9-7.tar.gz"
    ];
    sha256 = "196h7i4y1gzkwlybml9iz78p5xsx7y22nk5pmzibryn5amdbdy05";
  };

  propagatedBuildInputs = [
    XML
  ];

  meta = {
    description = "R package grImport";
    homepage = "https://cran.r-project.org/package=grImport";
  };
}
