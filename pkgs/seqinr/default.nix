{
  buildRPackage,
  fetchurl,
  ade4,
  segmented,
}:

buildRPackage {
  pname = "seqinr";
  version = "4.2-44";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/seqinr_4.2-44.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/seqinr/seqinr_4.2-44.tar.gz"
    ];
    sha256 = "06gxxc7k3pyy51dhfclvy8c0ia9kcfgisrizpz21fcy2qg4lbp09";
  };

  propagatedBuildInputs = [
    ade4
    segmented
  ];

  meta = {
    description = "R package seqinr";
    homepage = "https://cran.r-project.org/package=seqinr";
  };
}
