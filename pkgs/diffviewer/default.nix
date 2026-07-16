{
  buildRPackage,
  fetchurl,
  htmlwidgets,
  jsonlite,
}:

buildRPackage {
  pname = "diffviewer";
  version = "0.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/diffviewer_0.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/diffviewer/diffviewer_0.1.2.tar.gz"
    ];
    sha256 = "1rwcqmc9h7ggxfkc57wklz5vqqanlr0mff7f2613gkh9pci5nadg";
  };

  propagatedBuildInputs = [
    htmlwidgets
    jsonlite
  ];

  meta = {
    description = "R package diffviewer";
    homepage = "https://cran.r-project.org/package=diffviewer";
  };
}
