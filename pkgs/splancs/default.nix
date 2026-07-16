{
  buildRPackage,
  fetchurl,
  sp,
}:

buildRPackage {
  pname = "splancs";
  version = "2.01-45";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/splancs_2.01-45.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/splancs/splancs_2.01-45.tar.gz"
    ];
    sha256 = "1lvn9gm2n7ic4cxz255jls33kkbblrdcka87v99apskz3pbg3k4b";
  };

  propagatedBuildInputs = [
    sp
  ];

  meta = {
    description = "R package splancs";
    homepage = "https://cran.r-project.org/package=splancs";
  };
}
