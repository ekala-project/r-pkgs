{
  buildRPackage,
  fetchurl,
  MASS,
  plyr,
  reshape,
}:

buildRPackage {
  pname = "WRS2";
  version = "1.1-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/WRS2_1.1-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/WRS2/WRS2_1.1-7.tar.gz"
    ];
    sha256 = "13z3blfvzjddlkixz9cgzni6p435ppjndifif096bic8zrx9f827";
  };

  propagatedBuildInputs = [
    MASS
    plyr
    reshape
  ];

  meta = {
    description = "R package WRS2";
    homepage = "https://cran.r-project.org/package=WRS2";
  };
}
