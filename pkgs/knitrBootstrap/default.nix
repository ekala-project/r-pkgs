{
  buildRPackage,
  fetchurl,
  knitr,
  markdown,
  rmarkdown,
}:

buildRPackage {
  pname = "knitrBootstrap";
  version = "1.0.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/knitrBootstrap_1.0.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/knitrBootstrap/knitrBootstrap_1.0.4.tar.gz"
    ];
    sha256 = "12l3445aap2kh5wj4qhqf1bd6l1s1y4pp8an26fi65wv5zgyihgv";
  };

  propagatedBuildInputs = [
    knitr
    markdown
    rmarkdown
  ];

  meta = {
    description = "R package knitrBootstrap";
    homepage = "https://cran.r-project.org/package=knitrBootstrap";
  };
}
