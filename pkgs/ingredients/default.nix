{
  buildRPackage,
  fetchurl,
  ggplot2,
  gridExtra,
  scales,
}:

buildRPackage {
  pname = "ingredients";
  version = "2.3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ingredients_2.3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ingredients/ingredients_2.3.0.tar.gz"
    ];
    sha256 = "0jvxkdhbc28a096hi0y6519cj4im4mnl1vz9s563dvb5g4vb7r7b";
  };

  propagatedBuildInputs = [
    ggplot2
    gridExtra
    scales
  ];

  meta = {
    description = "R package ingredients";
    homepage = "https://cran.r-project.org/package=ingredients";
  };
}
