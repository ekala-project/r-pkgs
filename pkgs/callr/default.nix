{
  buildRPackage,
  fetchurl,
  R6,
  processx,
}:

buildRPackage {
  pname = "callr";
  version = "3.7.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/callr_3.7.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/callr/callr_3.7.6.tar.gz"
    ];
    sha256 = "1y2ildc0ni01lkcircbr648f5knq6ch6smh5xap2xr39x1ky7g74";
  };

  propagatedBuildInputs = [
    R6
    processx
  ];

  meta = {
    description = "R package callr";
    homepage = "https://cran.r-project.org/package=callr";
  };
}
