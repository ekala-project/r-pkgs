{
  buildRPackage,
  fetchurl,
  jsonlite,
  shiny,
}:

buildRPackage {
  pname = "rintrojs";
  version = "0.3.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rintrojs_0.3.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rintrojs/rintrojs_0.3.4.tar.gz"
    ];
    sha256 = "12944h3h6131l916bsz6vmccq8pvq831b52s3wb1hpwygqfj0a6l";
  };

  propagatedBuildInputs = [
    jsonlite
    shiny
  ];

  meta = {
    description = "R package rintrojs";
    homepage = "https://cran.r-project.org/package=rintrojs";
  };
}
