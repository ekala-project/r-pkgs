{
  buildRPackage,
  fetchurl,
  bigassertr,
  ff,
}:

buildRPackage {
  pname = "rmio";
  version = "0.4.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rmio_0.4.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rmio/rmio_0.4.0.tar.gz"
    ];
    sha256 = "1gkd8nkqyfpkp6nvqb7c698difak5ymih3vy6njzqd3gwdp09mhy";
  };

  propagatedBuildInputs = [
    bigassertr
    ff
  ];

  meta = {
    description = "R package rmio";
    homepage = "https://cran.r-project.org/package=rmio";
  };
}
