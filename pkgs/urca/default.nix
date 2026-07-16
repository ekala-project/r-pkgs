{
  buildRPackage,
  fetchurl,
  nlme,
}:

buildRPackage {
  pname = "urca";
  version = "1.3-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/urca_1.3-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/urca/urca_1.3-4.tar.gz"
    ];
    sha256 = "05nb1an5a8r0w6gca6cf40nws2v4hxhznz8kyfm7q7hz0kjnqggy";
  };

  propagatedBuildInputs = [
    nlme
  ];

  meta = {
    description = "R package urca";
    homepage = "https://cran.r-project.org/package=urca";
  };
}
