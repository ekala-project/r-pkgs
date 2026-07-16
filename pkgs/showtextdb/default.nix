{
  buildRPackage,
  fetchurl,
  sysfonts,
}:

buildRPackage {
  pname = "showtextdb";
  version = "3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/showtextdb_3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/showtextdb/showtextdb_3.0.tar.gz"
    ];
    sha256 = "0hlnc3fhgrdkd46n7hb6id0gg1v0bf8s4679nrr7rchyp455szq2";
  };

  propagatedBuildInputs = [
    sysfonts
  ];

  meta = {
    description = "R package showtextdb";
    homepage = "https://cran.r-project.org/package=showtextdb";
  };
}
