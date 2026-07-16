{
  buildRPackage,
  fetchurl,
  ggplot2,
}:

buildRPackage {
  pname = "ggsignif";
  version = "0.6.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggsignif_0.6.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggsignif/ggsignif_0.6.4.tar.gz"
    ];
    sha256 = "02mjailzyqkdnzky60dgampw2sq6mnn7s66fk0lhy32s8apm280i";
  };

  propagatedBuildInputs = [
    ggplot2
  ];

  meta = {
    description = "R package ggsignif";
    homepage = "https://cran.r-project.org/package=ggsignif";
  };
}
