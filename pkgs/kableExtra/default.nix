{
  buildRPackage,
  fetchurl,
  digest,
  htmltools,
  knitr,
  magrittr,
  rmarkdown,
  rstudioapi,
  scales,
  stringr,
  svglite,
  viridisLite,
  xml2,
}:

buildRPackage {
  pname = "kableExtra";
  version = "1.4.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/kableExtra_1.4.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/kableExtra/kableExtra_1.4.0.tar.gz"
    ];
    sha256 = "02blaamz6xkdwgyvw6akjhn5fvwy8l24k7nwqj2id6g8qagwrqlg";
  };

  propagatedBuildInputs = [
    digest
    htmltools
    knitr
    magrittr
    rmarkdown
    rstudioapi
    scales
    stringr
    svglite
    viridisLite
    xml2
  ];

  meta = {
    description = "R package kableExtra";
    homepage = "https://cran.r-project.org/package=kableExtra";
  };
}
