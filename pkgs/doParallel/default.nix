{
  buildRPackage,
  fetchurl,
  foreach,
  iterators,
}:

buildRPackage {
  pname = "doParallel";
  version = "1.0.17";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/doParallel_1.0.17.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/doParallel/doParallel_1.0.17.tar.gz"
    ];
    sha256 = "1mxbg2qqda1775vb4s26gz27p5n91lljgjmlqxq4sras22njasmr";
  };

  propagatedBuildInputs = [
    foreach
    iterators
  ];

  meta = {
    description = "R package doParallel";
    homepage = "https://cran.r-project.org/package=doParallel";
  };
}
