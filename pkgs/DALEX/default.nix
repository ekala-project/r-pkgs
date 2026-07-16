{
  buildRPackage,
  fetchurl,
  ggplot2,
  iBreakDown,
  ingredients,
  kernelshap,
}:

buildRPackage {
  pname = "DALEX";
  version = "2.5.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/DALEX_2.5.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/DALEX/DALEX_2.5.3.tar.gz"
    ];
    sha256 = "09i7jfhdmy3nyi8y26iy1p1zzhki61pfd2967p5n8a9hk4klishy";
  };

  propagatedBuildInputs = [
    ggplot2
    iBreakDown
    ingredients
    kernelshap
  ];

  meta = {
    description = "R package DALEX";
    homepage = "https://cran.r-project.org/package=DALEX";
  };
}
