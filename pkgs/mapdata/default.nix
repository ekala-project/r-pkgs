{
  buildRPackage,
  fetchurl,
  maps,
}:

buildRPackage {
  pname = "mapdata";
  version = "2.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mapdata_2.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mapdata/mapdata_2.3.1.tar.gz"
    ];
    sha256 = "1m2r4c8f7fp900g3sdjbfxxnxjla86hn75jd8hi96ms188p0j8b0";
  };

  propagatedBuildInputs = [
    maps
  ];

  meta = {
    description = "R package mapdata";
    homepage = "https://cran.r-project.org/package=mapdata";
  };
}
