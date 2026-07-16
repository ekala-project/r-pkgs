{
  buildRPackage,
  fetchurl,
  commonmark,
  xfun,
}:

buildRPackage {
  pname = "litedown";
  version = "0.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/litedown_0.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/litedown/litedown_0.9.tar.gz"
    ];
    sha256 = "0gzmwdb5akag3q0x18i5nr1vrjyv4x48gcg0gv9h1hv3s27wbq9m";
  };

  propagatedBuildInputs = [
    commonmark
    xfun
  ];

  meta = {
    description = "R package litedown";
    homepage = "https://cran.r-project.org/package=litedown";
  };
}
