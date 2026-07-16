{
  buildRPackage,
  fetchurl,
  ggplot2,
  scales,
}:

buildRPackage {
  pname = "scattermore";
  version = "1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/scattermore_1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/scattermore/scattermore_1.2.tar.gz"
    ];
    sha256 = "1l820rc4ncmqd5sacdc420xf6r5dh34sbhgzzgq7a4yx1dxshd2m";
  };

  propagatedBuildInputs = [
    ggplot2
    scales
  ];

  meta = {
    description = "R package scattermore";
    homepage = "https://cran.r-project.org/package=scattermore";
  };
}
