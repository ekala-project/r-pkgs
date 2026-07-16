{
  buildRPackage,
  fetchurl,
  nanonext,
}:

buildRPackage {
  pname = "mirai";
  version = "2.7.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mirai_2.7.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mirai/mirai_2.7.0.tar.gz"
    ];
    sha256 = "1h2yfvk5skh9zbbdydjblab29jfgsd9g89483dl3gdgms7k9h5vw";
  };

  propagatedBuildInputs = [
    nanonext
  ];

  meta = {
    description = "R package mirai";
    homepage = "https://cran.r-project.org/package=mirai";
  };
}
