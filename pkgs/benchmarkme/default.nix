{
  buildRPackage,
  fetchurl,
  Matrix,
  benchmarkmeData,
  doParallel,
  dplyr,
  foreach,
  httr,
  stringr,
  tibble,
}:

buildRPackage {
  pname = "benchmarkme";
  version = "1.0.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/benchmarkme_1.0.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/benchmarkme/benchmarkme_1.0.8.tar.gz"
    ];
    sha256 = "0qaz8wy3n08k9lr8qljk5i8z8db18scbdc8m734aymd307h00w8x";
  };

  propagatedBuildInputs = [
    Matrix
    benchmarkmeData
    doParallel
    dplyr
    foreach
    httr
    stringr
    tibble
  ];

  meta = {
    description = "R package benchmarkme";
    homepage = "https://cran.r-project.org/package=benchmarkme";
  };
}
