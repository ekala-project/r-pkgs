{
  buildRPackage,
  fetchurl,
  DBI,
  R6,
  later,
  rlang,
}:

buildRPackage {
  pname = "pool";
  version = "1.0.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pool_1.0.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pool/pool_1.0.5.tar.gz"
    ];
    sha256 = "1pkfhzg3b7c88ny0550338aharawmm8027y7zv4y7yhfvv10nsz7";
  };

  propagatedBuildInputs = [
    DBI
    R6
    later
    rlang
  ];

  meta = {
    description = "R package pool";
    homepage = "https://cran.r-project.org/package=pool";
  };
}
