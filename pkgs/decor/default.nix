{
  buildRPackage,
  fetchurl,
  tibble,
  vctrs,
}:

buildRPackage {
  pname = "decor";
  version = "1.0.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/decor_1.0.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/decor/decor_1.0.2.tar.gz"
    ];
    sha256 = "1xki8vjn363v90x7a66apnzg43ngi7in9k678f62jls2h3rhqv1f";
  };

  propagatedBuildInputs = [
    tibble
    vctrs
  ];

  meta = {
    description = "R package decor";
    homepage = "https://cran.r-project.org/package=decor";
  };
}
