{
  buildRPackage,
  fetchurl,
  cli,
  httr,
  jsonlite,
  sf,
  terra,
}:

buildRPackage {
  pname = "rnaturalearth";
  version = "1.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rnaturalearth_1.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rnaturalearth/rnaturalearth_1.2.0.tar.gz"
    ];
    sha256 = "1bw7l9zwqxw4i35hzprxr00w1rwzsx9sfjcz3li4r1d74f6mzain";
  };

  propagatedBuildInputs = [
    cli
    httr
    jsonlite
    sf
    terra
  ];

  meta = {
    description = "R package rnaturalearth";
    homepage = "https://cran.r-project.org/package=rnaturalearth";
  };
}
