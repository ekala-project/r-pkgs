{
  buildRPackage,
  fetchurl,
  Cairo,
  ggbeeswarm,
  ggplot2,
  png,
  ragg,
}:

buildRPackage {
  pname = "ggrastr";
  version = "1.0.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggrastr_1.0.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggrastr/ggrastr_1.0.2.tar.gz"
    ];
    sha256 = "1l90mlb6bqq98ifmlbs5481vch9inmzdnvnz192adklrr9nl09yb";
  };

  propagatedBuildInputs = [
    Cairo
    ggbeeswarm
    ggplot2
    png
    ragg
  ];

  meta = {
    description = "R package ggrastr";
    homepage = "https://cran.r-project.org/package=ggrastr";
  };
}
