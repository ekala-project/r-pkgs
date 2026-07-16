{
  buildRPackage,
  fetchurl,
  gtools,
}:

buildRPackage {
  pname = "gdata";
  version = "3.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gdata_3.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gdata/gdata_3.0.1.tar.gz"
    ];
    sha256 = "0qiqfrk0qi8k1f6kvfkgp43algjdgfx6w5xmqrpyzh535gfrcfnv";
  };

  propagatedBuildInputs = [
    gtools
  ];

  meta = {
    description = "R package gdata";
    homepage = "https://cran.r-project.org/package=gdata";
  };
}
