{
  buildRPackage,
  fetchurl,
  DBI,
  bit64,
  blob,
  cpp11,
  memoise,
  pkgconfig,
  rlang,
}:

buildRPackage {
  pname = "RSQLite";
  version = "3.53.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RSQLite_3.53.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RSQLite/RSQLite_3.53.1.tar.gz"
    ];
    sha256 = "0ykbl94n1k61kqmdr1dfj1sq4sy8igzq95hrll7yhp4kdl7j8wqg";
  };

  propagatedBuildInputs = [
    DBI
    bit64
    blob
    cpp11
    memoise
    pkgconfig
    rlang
  ];

  meta = {
    description = "R package RSQLite";
    homepage = "https://cran.r-project.org/package=RSQLite";
  };
}
