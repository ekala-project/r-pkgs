{
  buildRPackage,
  fetchurl,
  cli,
  ggfittext,
  ggplot2,
  lifecycle,
  rlang,
}:

buildRPackage {
  pname = "gggenes";
  version = "0.6.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gggenes_0.6.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gggenes/gggenes_0.6.0.tar.gz"
    ];
    sha256 = "0400qhppx8kg70f6bbya3k6lhdgjj3dllgfgg6s509kbp5qsjbcd";
  };

  propagatedBuildInputs = [
    cli
    ggfittext
    ggplot2
    lifecycle
    rlang
  ];

  meta = {
    description = "R package gggenes";
    homepage = "https://cran.r-project.org/package=gggenes";
  };
}
