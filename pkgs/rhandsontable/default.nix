{
  buildRPackage,
  fetchurl,
  htmlwidgets,
  jsonlite,
  magrittr,
}:

buildRPackage {
  pname = "rhandsontable";
  version = "0.3.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rhandsontable_0.3.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rhandsontable/rhandsontable_0.3.8.tar.gz"
    ];
    sha256 = "07fj6npq65pq836vdwblkhprdaq4i4f13cwdmm9gmxrnk72xj7lh";
  };

  propagatedBuildInputs = [
    htmlwidgets
    jsonlite
    magrittr
  ];

  meta = {
    description = "R package rhandsontable";
    homepage = "https://cran.r-project.org/package=rhandsontable";
  };
}
