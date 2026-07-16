{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "prettyunits";
  version = "1.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/prettyunits_1.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/prettyunits/prettyunits_1.2.0.tar.gz"
    ];
    sha256 = "1smcxrfsz6cxym9h8iaiqrrw5bzp2bbpmf05zr8y70jw59zg4ngh";
  };

  meta = {
    description = "R package prettyunits";
    homepage = "https://cran.r-project.org/package=prettyunits";
  };
}
