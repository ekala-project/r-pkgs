{
  buildRPackage,
  fetchurl,
  MASS,
  bayesm,
  robustbase,
  tensorA,
}:

buildRPackage {
  pname = "compositions";
  version = "2.0-9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/compositions_2.0-9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/compositions/compositions_2.0-9.tar.gz"
    ];
    sha256 = "1zwpw85fvnsixqmfzkg6id04yymqbp23s7l8aks3s3d23hyg59gd";
  };

  propagatedBuildInputs = [
    MASS
    bayesm
    robustbase
    tensorA
  ];

  meta = {
    description = "R package compositions";
    homepage = "https://cran.r-project.org/package=compositions";
  };
}
