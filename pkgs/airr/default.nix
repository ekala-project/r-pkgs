{
  buildRPackage,
  fetchurl,
  jsonlite,
  readr,
  stringi,
  yaml,
}:

buildRPackage {
  pname = "airr";
  version = "1.6.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/airr_1.6.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/airr/airr_1.6.1.tar.gz"
    ];
    sha256 = "0l92ihjsmzs71hjj7faqwyp29nxjn8g1v8vfmf0f37q8s5gsqrp4";
  };

  propagatedBuildInputs = [
    jsonlite
    readr
    stringi
    yaml
  ];

  meta = {
    description = "R package airr";
    homepage = "https://cran.r-project.org/package=airr";
  };
}
