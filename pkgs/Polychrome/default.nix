{
  buildRPackage,
  fetchurl,
  colorspace,
  scatterplot3d,
}:

buildRPackage {
  pname = "Polychrome";
  version = "1.5.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Polychrome_1.5.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Polychrome/Polychrome_1.5.4.tar.gz"
    ];
    sha256 = "18lxkdfw37ci0y0l0wya7kr57hwn3yh2r88gjimpp4x1z833vxrw";
  };

  propagatedBuildInputs = [
    colorspace
    scatterplot3d
  ];

  meta = {
    description = "R package Polychrome";
    homepage = "https://cran.r-project.org/package=Polychrome";
  };
}
