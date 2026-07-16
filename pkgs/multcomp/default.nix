{
  buildRPackage,
  fetchurl,
  TH_data,
  codetools,
  mvtnorm,
  sandwich,
  survival,
}:

buildRPackage {
  pname = "multcomp";
  version = "1.4-30";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/multcomp_1.4-30.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/multcomp/multcomp_1.4-30.tar.gz"
    ];
    sha256 = "0p29pqrn7hfczblcgi2q616ir7r9s12bgr16ba8si10p49pk292b";
  };

  propagatedBuildInputs = [
    TH_data
    codetools
    mvtnorm
    sandwich
    survival
  ];

  meta = {
    description = "R package multcomp";
    homepage = "https://cran.r-project.org/package=multcomp";
  };
}
