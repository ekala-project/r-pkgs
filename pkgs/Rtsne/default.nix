{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "Rtsne";
  version = "0.17";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Rtsne_0.17.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Rtsne/Rtsne_0.17.tar.gz"
    ];
    sha256 = "02srqmfkdj7v9gyhssaqdarg4ljn2ds77w25a5w0dm66sqa6ibis";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package Rtsne";
    homepage = "https://cran.r-project.org/package=Rtsne";
  };
}
