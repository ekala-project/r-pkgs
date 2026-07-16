{
  buildRPackage,
  fetchurl,
  mathjaxr,
}:

buildRPackage {
  pname = "metadat";
  version = "1.6-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/metadat_1.6-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/metadat/metadat_1.6-0.tar.gz"
    ];
    sha256 = "01g3qrabb5xh45km94s9i3qq89kkav43ic0pds3ysh92bljbpwpm";
  };

  propagatedBuildInputs = [
    mathjaxr
  ];

  meta = {
    description = "R package metadat";
    homepage = "https://cran.r-project.org/package=metadat";
  };
}
