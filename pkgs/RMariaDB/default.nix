{
  buildRPackage,
  fetchurl,
  DBI,
  bit64,
  blob,
  cpp11,
  hms,
  lubridate,
  rlang,
}:

buildRPackage {
  pname = "RMariaDB";
  version = "1.3.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RMariaDB_1.3.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RMariaDB/RMariaDB_1.3.5.tar.gz"
    ];
    sha256 = "1c964p32dqcw1pi0pifp2myjpgxk6qxiy24bv096lcdw0m6xw97g";
  };

  propagatedBuildInputs = [
    DBI
    bit64
    blob
    cpp11
    hms
    lubridate
    rlang
  ];

  meta = {
    description = "R package RMariaDB";
    homepage = "https://cran.r-project.org/package=RMariaDB";
  };
}
