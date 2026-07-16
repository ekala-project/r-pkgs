{
  buildRPackage,
  fetchurl,
  MASS,
  nlme,
}:

buildRPackage {
  pname = "segmented";
  version = "2.2-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/segmented_2.2-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/segmented/segmented_2.2-1.tar.gz"
    ];
    sha256 = "0zn9sdjp1xdcqs9vh8nh6hb8wpjlm771q36ga01r9a1r8x2wm7za";
  };

  propagatedBuildInputs = [
    MASS
    nlme
  ];

  meta = {
    description = "R package segmented";
    homepage = "https://cran.r-project.org/package=segmented";
  };
}
