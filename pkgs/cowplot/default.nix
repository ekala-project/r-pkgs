{
  buildRPackage,
  fetchurl,
  ggplot2,
  gtable,
  rlang,
  scales,
}:

buildRPackage {
  pname = "cowplot";
  version = "1.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/cowplot_1.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/cowplot/cowplot_1.2.0.tar.gz"
    ];
    sha256 = "188s4dpyys71byq2kd3ljcl2dn5akp0n7ng08mgh13xn9wm5h7a3";
  };

  propagatedBuildInputs = [
    ggplot2
    gtable
    rlang
    scales
  ];

  meta = {
    description = "R package cowplot";
    homepage = "https://cran.r-project.org/package=cowplot";
  };
}
