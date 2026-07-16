{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "kohonen";
  version = "3.0.13";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/kohonen_3.0.13.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/kohonen/kohonen_3.0.13.tar.gz"
    ];
    sha256 = "0l53y2d9n2ilccmriaiarvf1mdhx81phbxqarbk7vqrs6gcb0v85";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package kohonen";
    homepage = "https://cran.r-project.org/package=kohonen";
  };
}
