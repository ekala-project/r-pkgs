{
  buildRPackage,
  fetchurl,
  farver,
  ggplot2,
  rappdirs,
  rlang,
  rstudioapi,
  scales,
}:

buildRPackage {
  pname = "thematic";
  version = "0.1.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/thematic_0.1.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/thematic/thematic_0.1.8.tar.gz"
    ];
    sha256 = "0ia1mlc0qbiwbd1a6khpfb87f4xdpl4qn1src1wydfb4z9fpr6k0";
  };

  propagatedBuildInputs = [
    farver
    ggplot2
    rappdirs
    rlang
    rstudioapi
    scales
  ];

  meta = {
    description = "R package thematic";
    homepage = "https://cran.r-project.org/package=thematic";
  };
}
