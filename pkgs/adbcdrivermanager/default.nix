{
  buildRPackage,
  fetchurl,
  nanoarrow,
}:

buildRPackage {
  pname = "adbcdrivermanager";
  version = "0.23.0-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/adbcdrivermanager_0.23.0-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/adbcdrivermanager/adbcdrivermanager_0.23.0-1.tar.gz"
    ];
    sha256 = "0lqkj3ckj5cm7iq2va19bqg6nxswvwhv18v56kljzfchf2fdd7hd";
  };

  propagatedBuildInputs = [
    nanoarrow
  ];

  meta = {
    description = "R package adbcdrivermanager";
    homepage = "https://cran.r-project.org/package=adbcdrivermanager";
  };
}
