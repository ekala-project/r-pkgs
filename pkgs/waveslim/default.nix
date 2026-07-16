{
  buildRPackage,
  fetchurl,
  multitaper,
}:

buildRPackage {
  pname = "waveslim";
  version = "1.8.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/waveslim_1.8.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/waveslim/waveslim_1.8.5.tar.gz"
    ];
    sha256 = "0xd7006skrsvkwj4pkxqbfsbs58rfcpfcfk1lf0gsd2y0wisi60y";
  };

  propagatedBuildInputs = [
    multitaper
  ];

  meta = {
    description = "R package waveslim";
    homepage = "https://cran.r-project.org/package=waveslim";
  };
}
