{
  buildRPackage,
  fetchurl,
  XML,
  igraph,
}:

buildRPackage {
  pname = "BoolNet";
  version = "2.1.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/BoolNet_2.1.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/BoolNet/BoolNet_2.1.9.tar.gz"
    ];
    sha256 = "19xnmz5dq8lvk1va8zi931xkawkwfcfjf4vh0dsg5n8zhy4p321f";
  };

  propagatedBuildInputs = [
    XML
    igraph
  ];

  meta = {
    description = "R package BoolNet";
    homepage = "https://cran.r-project.org/package=BoolNet";
  };
}
