{
  buildRPackage,
  fetchurl,
  R6,
  crayon,
  hms,
  prettyunits,
}:

buildRPackage {
  pname = "progress";
  version = "1.2.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/progress_1.2.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/progress/progress_1.2.3.tar.gz"
    ];
    sha256 = "0xljky4ad2jbbcfrcyh48li461pc5b2wk210n4x5rs2di6dhfaza";
  };

  propagatedBuildInputs = [
    R6
    crayon
    hms
    prettyunits
  ];

  meta = {
    description = "R package progress";
    homepage = "https://cran.r-project.org/package=progress";
  };
}
