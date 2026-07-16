{
  buildRPackage,
  fetchurl,
  Formula,
  plotrix,
}:

buildRPackage {
  pname = "plotmo";
  version = "3.7.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/plotmo_3.7.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/plotmo/plotmo_3.7.0.tar.gz"
    ];
    sha256 = "0ci0h4ajmlxjw8vq812fsqspkdv63iklfgvn99984xcn04gn5rl0";
  };

  propagatedBuildInputs = [
    Formula
    plotrix
  ];

  meta = {
    description = "R package plotmo";
    homepage = "https://cran.r-project.org/package=plotmo";
  };
}
