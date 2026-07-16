{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "beanplot";
  version = "1.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/beanplot_1.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/beanplot/beanplot_1.3.1.tar.gz"
    ];
    sha256 = "1b8mvlcsv5l9g08ag92hndsvk8jmgxvznhzgazc8y4296kp8l5a9";
  };

  meta = {
    description = "R package beanplot";
    homepage = "https://cran.r-project.org/package=beanplot";
  };
}
