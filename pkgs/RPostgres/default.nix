{
  buildRPackage,
  fetchurl,
  DBI,
  bit64,
  blob,
  cpp11,
  hms,
  lubridate,
  withr,
}:

buildRPackage {
  pname = "RPostgres";
  version = "1.4.10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RPostgres_1.4.10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RPostgres/RPostgres_1.4.10.tar.gz"
    ];
    sha256 = "1s83znhz0wcwgfq9kb0c0i9ds9bx5vb341svwyafpdxsim1j8d7p";
  };

  propagatedBuildInputs = [
    DBI
    bit64
    blob
    cpp11
    hms
    lubridate
    withr
  ];

  meta = {
    description = "R package RPostgres";
    homepage = "https://cran.r-project.org/package=RPostgres";
  };
}
