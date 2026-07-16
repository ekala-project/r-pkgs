{
  buildRPackage,
  fetchurl,
  Rttf2pt1,
  extrafontdb,
}:

buildRPackage {
  pname = "extrafont";
  version = "0.20";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/extrafont_0.20.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/extrafont/extrafont_0.20.tar.gz"
    ];
    sha256 = "03v9arvh2bzf5bhl1211nylc78pgw6l0h5fvxqqdd6jnswlya9cl";
  };

  propagatedBuildInputs = [
    Rttf2pt1
    extrafontdb
  ];

  meta = {
    description = "R package extrafont";
    homepage = "https://cran.r-project.org/package=extrafont";
  };
}
