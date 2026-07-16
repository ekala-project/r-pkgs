{
  buildRPackage,
  fetchurl,
  DoE_base,
  igraph,
  scatterplot3d,
  sfsmisc,
}:

buildRPackage {
  pname = "FrF2";
  version = "2.3-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/FrF2_2.3-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/FrF2/FrF2_2.3-4.tar.gz"
    ];
    sha256 = "04driqjz17y872a0v26xl55d298lzg8mzyw0yf8hy7nfbyzykx5g";
  };

  propagatedBuildInputs = [
    DoE_base
    igraph
    scatterplot3d
    sfsmisc
  ];

  meta = {
    description = "R package FrF2";
    homepage = "https://cran.r-project.org/package=FrF2";
  };
}
