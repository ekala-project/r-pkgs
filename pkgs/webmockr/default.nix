{
  buildRPackage,
  fetchurl,
  R6,
  cli,
  curl,
  fauxpas,
  jsonlite,
  magrittr,
  rlang,
  urltools,
}:

buildRPackage {
  pname = "webmockr";
  version = "2.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/webmockr_2.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/webmockr/webmockr_2.2.0.tar.gz"
    ];
    sha256 = "0l20vxiysgbmhd9jqz6fkzi1pqjypfc41r9rr80rsx8491g490vy";
  };

  propagatedBuildInputs = [
    R6
    cli
    curl
    fauxpas
    jsonlite
    magrittr
    rlang
    urltools
  ];

  meta = {
    description = "R package webmockr";
    homepage = "https://cran.r-project.org/package=webmockr";
  };
}
