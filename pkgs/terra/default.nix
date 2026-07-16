{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "terra";
  version = "1.9-27";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/terra_1.9-27.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/terra/terra_1.9-27.tar.gz"
    ];
    sha256 = "06knzm66jgi3skw9a480n9n1b065cw6ydszh0vx64b6vqs79ilna";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package terra";
    homepage = "https://cran.r-project.org/package=terra";
  };
}
