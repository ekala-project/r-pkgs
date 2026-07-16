{
  buildRPackage,
  fetchurl,
  htmlwidgets,
  rlang,
  vctrs,
}:

buildRPackage {
  pname = "profvis";
  version = "0.4.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/profvis_0.4.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/profvis/profvis_0.4.0.tar.gz"
    ];
    sha256 = "1x2cpykcmq5a30c0mf22h2pnnanqij0yqjv3q33xzx11c07fpzfj";
  };

  propagatedBuildInputs = [
    htmlwidgets
    rlang
    vctrs
  ];

  meta = {
    description = "R package profvis";
    homepage = "https://cran.r-project.org/package=profvis";
  };
}
