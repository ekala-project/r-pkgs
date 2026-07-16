{
  buildRPackage,
  fetchurl,
  ggplot2,
}:

buildRPackage {
  pname = "iBreakDown";
  version = "2.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/iBreakDown_2.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/iBreakDown/iBreakDown_2.1.2.tar.gz"
    ];
    sha256 = "1qacvfzknchfm27mhl7a357fnb6lzjkj4vh8lch5aljz82sdmdaf";
  };

  propagatedBuildInputs = [
    ggplot2
  ];

  meta = {
    description = "R package iBreakDown";
    homepage = "https://cran.r-project.org/package=iBreakDown";
  };
}
