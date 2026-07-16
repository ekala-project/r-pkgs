{
  buildRPackage,
  fetchurl,
  MASS,
  lmtest,
  sandwich,
  strucchange,
  urca,
}:

buildRPackage {
  pname = "vars";
  version = "1.6-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/vars_1.6-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/vars/vars_1.6-1.tar.gz"
    ];
    sha256 = "1i8ldzb44wnlaww8a0k6sgfj1khgah5v445gi45d7vgv68rg0gcv";
  };

  propagatedBuildInputs = [
    MASS
    lmtest
    sandwich
    strucchange
    urca
  ];

  meta = {
    description = "R package vars";
    homepage = "https://cran.r-project.org/package=vars";
  };
}
