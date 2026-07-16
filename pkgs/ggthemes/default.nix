{
  buildRPackage,
  fetchurl,
  ggplot2,
  lifecycle,
  purrr,
  scales,
  stringr,
  tibble,
}:

buildRPackage {
  pname = "ggthemes";
  version = "5.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggthemes_5.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggthemes/ggthemes_5.2.0.tar.gz"
    ];
    sha256 = "1xicj5jvzw1050f7jcdcqbnafar1mwz6w8ld6xdp2bq8gabd9wx0";
  };

  propagatedBuildInputs = [
    ggplot2
    lifecycle
    purrr
    scales
    stringr
    tibble
  ];

  meta = {
    description = "R package ggthemes";
    homepage = "https://cran.r-project.org/package=ggthemes";
  };
}
