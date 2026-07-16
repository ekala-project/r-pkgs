{
  buildRPackage,
  fetchurl,
  processx,
}:

buildRPackage {
  pname = "xopen";
  version = "1.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/xopen_1.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/xopen/xopen_1.0.1.tar.gz"
    ];
    sha256 = "1v4sna4md4cpqwi7802m4mfflgi506fxh78la0kam894qfw7icp3";
  };

  propagatedBuildInputs = [
    processx
  ];

  meta = {
    description = "R package xopen";
    homepage = "https://cran.r-project.org/package=xopen";
  };
}
