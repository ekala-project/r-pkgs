{
  buildRPackage,
  fetchurl,
  ggplot2,
  magrittr,
  viridis,
}:

buildRPackage {
  pname = "dendextend";
  version = "1.19.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/dendextend_1.19.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/dendextend/dendextend_1.19.1.tar.gz"
    ];
    sha256 = "0097bmdv960khjkf3gvbdrazx4ns8i9221m9h68vnq541h61ag5y";
  };

  propagatedBuildInputs = [
    ggplot2
    magrittr
    viridis
  ];

  meta = {
    description = "R package dendextend";
    homepage = "https://cran.r-project.org/package=dendextend";
  };
}
