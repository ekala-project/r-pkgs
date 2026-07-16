{
  buildRPackage,
  fetchurl,
  R6,
  ps,
}:

buildRPackage {
  pname = "processx";
  version = "3.9.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/processx_3.9.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/processx/processx_3.9.0.tar.gz"
    ];
    sha256 = "0m5kix63q8166agxrp57mcaz4mi6yr08l9ab225iv285ah1zkznd";
  };

  propagatedBuildInputs = [
    R6
    ps
  ];

  meta = {
    description = "R package processx";
    homepage = "https://cran.r-project.org/package=processx";
  };
}
