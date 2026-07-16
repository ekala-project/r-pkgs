{
  buildRPackage,
  fetchurl,
  base64enc,
  crosstalk,
  htmlwidgets,
  igraph,
}:

buildRPackage {
  pname = "threejs";
  version = "0.3.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/threejs_0.3.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/threejs/threejs_0.3.4.tar.gz"
    ];
    sha256 = "115ldv4df276312bsfigkz28mp2d0xk2izxwvghiw182hzbsasqw";
  };

  propagatedBuildInputs = [
    base64enc
    crosstalk
    htmlwidgets
    igraph
  ];

  meta = {
    description = "R package threejs";
    homepage = "https://cran.r-project.org/package=threejs";
  };
}
