{
  buildRPackage,
  fetchurl,
  polynom,
}:

buildRPackage {
  pname = "orthopolynom";
  version = "1.0-6.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/orthopolynom_1.0-6.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/orthopolynom/orthopolynom_1.0-6.1.tar.gz"
    ];
    sha256 = "1ig2pyyibbynwmhapbicij5g47acnz8npjm46xnjybskcv96wjpc";
  };

  propagatedBuildInputs = [
    polynom
  ];

  meta = {
    description = "R package orthopolynom";
    homepage = "https://cran.r-project.org/package=orthopolynom";
  };
}
