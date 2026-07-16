{
  buildRPackage,
  fetchurl,
  rematch,
  tibble,
}:

buildRPackage {
  pname = "cellranger";
  version = "1.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/cellranger_1.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/cellranger/cellranger_1.1.0.tar.gz"
    ];
    sha256 = "16fgi3annn34c3cxi0pxf62mmmmxi21hp0zzlv7bkfsjqy4g4f2x";
  };

  propagatedBuildInputs = [
    rematch
    tibble
  ];

  meta = {
    description = "R package cellranger";
    homepage = "https://cran.r-project.org/package=cellranger";
  };
}
