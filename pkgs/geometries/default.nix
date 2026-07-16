{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "geometries";
  version = "0.2.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/geometries_0.2.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/geometries/geometries_0.2.5.tar.gz"
    ];
    sha256 = "14l4qycwyi7lp8vl598xhwi28vrgj9psll3k8zafld7n64zsh4ih";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package geometries";
    homepage = "https://cran.r-project.org/package=geometries";
  };
}
