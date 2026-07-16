{
  buildRPackage,
  fetchurl,
  dplyr,
  ggplot2,
  splitfngr,
}:

buildRPackage {
  pname = "mixopt";
  version = "0.1.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mixopt_0.1.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mixopt/mixopt_0.1.3.tar.gz"
    ];
    sha256 = "0zgdkazsfmrqn5k4qanc18mw0scjwjyfzh9jwgjrbamv36ygry6n";
  };

  propagatedBuildInputs = [
    dplyr
    ggplot2
    splitfngr
  ];

  meta = {
    description = "R package mixopt";
    homepage = "https://cran.r-project.org/package=mixopt";
  };
}
