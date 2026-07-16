{
  buildRPackage,
  fetchurl,
  htmltools,
  rlang,
}:

buildRPackage {
  pname = "fontawesome";
  version = "0.5.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fontawesome_0.5.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fontawesome/fontawesome_0.5.3.tar.gz"
    ];
    sha256 = "0kzvh7xlq8lpx1l7x5gs99a3vncvbccqlqjwixjlrv6mzb80j68v";
  };

  propagatedBuildInputs = [
    htmltools
    rlang
  ];

  meta = {
    description = "R package fontawesome";
    homepage = "https://cran.r-project.org/package=fontawesome";
  };
}
