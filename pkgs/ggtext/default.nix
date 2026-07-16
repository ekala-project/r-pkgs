{
  buildRPackage,
  fetchurl,
  ggplot2,
  gridtext,
  rlang,
  scales,
}:

buildRPackage {
  pname = "ggtext";
  version = "0.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggtext_0.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggtext/ggtext_0.1.2.tar.gz"
    ];
    sha256 = "10vrrxviv4yp9lqsanqvwsvbj64vn66hwm1w7860x1g58hf1g0l7";
  };

  propagatedBuildInputs = [
    ggplot2
    gridtext
    rlang
    scales
  ];

  meta = {
    description = "R package ggtext";
    homepage = "https://cran.r-project.org/package=ggtext";
  };
}
