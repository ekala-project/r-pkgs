{
  buildRPackage,
  fetchurl,
  MASS,
  ggplot2,
  nortest,
}:

buildRPackage {
  pname = "EnvStats";
  version = "3.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/EnvStats_3.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/EnvStats/EnvStats_3.1.0.tar.gz"
    ];
    sha256 = "00ndb0wfhc3mg15b8sjf6l93q7h9mx2hsv8x7n4xi4r14hrvhhy7";
  };

  propagatedBuildInputs = [
    MASS
    ggplot2
    nortest
  ];

  meta = {
    description = "R package EnvStats";
    homepage = "https://cran.r-project.org/package=EnvStats";
  };
}
