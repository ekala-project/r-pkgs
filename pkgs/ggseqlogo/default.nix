{
  buildRPackage,
  fetchurl,
  ggplot2,
}:

buildRPackage {
  pname = "ggseqlogo";
  version = "0.2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggseqlogo_0.2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggseqlogo/ggseqlogo_0.2.2.tar.gz"
    ];
    sha256 = "021dxg4n0qvbwky03n4qimv7pjxjwhkd83i0d445q5d252vxk998";
  };

  propagatedBuildInputs = [
    ggplot2
  ];

  meta = {
    description = "R package ggseqlogo";
    homepage = "https://cran.r-project.org/package=ggseqlogo";
  };
}
