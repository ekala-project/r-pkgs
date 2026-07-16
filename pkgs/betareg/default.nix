{
  buildRPackage,
  fetchurl,
  Formula,
  flexmix,
  lmtest,
  modeltools,
  sandwich,
}:

buildRPackage {
  pname = "betareg";
  version = "3.2-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/betareg_3.2-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/betareg/betareg_3.2-4.tar.gz"
    ];
    sha256 = "1zdblsvc003ykfm9j6p6fxm5fn35b4xw04yajfyvbcsyshq4v92v";
  };

  propagatedBuildInputs = [
    Formula
    flexmix
    lmtest
    modeltools
    sandwich
  ];

  meta = {
    description = "R package betareg";
    homepage = "https://cran.r-project.org/package=betareg";
  };
}
