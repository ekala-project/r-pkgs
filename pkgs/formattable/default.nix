{
  buildRPackage,
  fetchurl,
  htmltools,
  htmlwidgets,
  knitr,
  rmarkdown,
}:

buildRPackage {
  pname = "formattable";
  version = "0.2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/formattable_0.2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/formattable/formattable_0.2.1.tar.gz"
    ];
    sha256 = "1vdxi0xmg019qyzjrp8bkjxciz245jcxsrkhfzd44ynqcwi4s3ag";
  };

  propagatedBuildInputs = [
    htmltools
    htmlwidgets
    knitr
    rmarkdown
  ];

  meta = {
    description = "R package formattable";
    homepage = "https://cran.r-project.org/package=formattable";
  };
}
