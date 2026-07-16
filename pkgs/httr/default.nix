{
  buildRPackage,
  fetchurl,
  R6,
  curl,
  jsonlite,
  mime,
  openssl,
}:

buildRPackage {
  pname = "httr";
  version = "1.4.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/httr_1.4.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/httr/httr_1.4.8.tar.gz"
    ];
    sha256 = "1y097vy168f0v8bbikhrfhadc0bfw5qlk40q7n9a5w0lk1szdb32";
  };

  propagatedBuildInputs = [
    R6
    curl
    jsonlite
    mime
    openssl
  ];

  meta = {
    description = "R package httr";
    homepage = "https://cran.r-project.org/package=httr";
  };
}
