{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "polylabelr";
  version = "1.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/polylabelr_1.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/polylabelr/polylabelr_1.0.0.tar.gz"
    ];
    sha256 = "1miw3mlhvs96dnhgips6n3lxffz7429z4m8cinhpivrh59l5ag4a";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package polylabelr";
    homepage = "https://cran.r-project.org/package=polylabelr";
  };
}
