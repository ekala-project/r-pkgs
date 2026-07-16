{
  buildRPackage,
  fetchurl,
  htmlwidgets,
}:

buildRPackage {
  pname = "diffr";
  version = "0.3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/diffr_0.3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/diffr/diffr_0.3.0.tar.gz"
    ];
    sha256 = "06mkid7iiwj56jh1flrmyg4n3d70834g2kckrn5z9s5lcag91jk0";
  };

  propagatedBuildInputs = [
    htmlwidgets
  ];

  meta = {
    description = "R package diffr";
    homepage = "https://cran.r-project.org/package=diffr";
  };
}
