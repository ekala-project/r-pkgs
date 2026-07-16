{
  buildRPackage,
  fetchurl,
  R6,
  stringi,
}:

buildRPackage {
  pname = "data_tree";
  version = "1.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/data_tree_1.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/data_tree/data_tree_1.2.0.tar.gz"
    ];
    sha256 = "08jgan7a9zaix2r0fn53qwdvm2b326bda21x4i5xdl4ahzskkfzy";
  };

  propagatedBuildInputs = [
    R6
    stringi
  ];

  meta = {
    description = "R package data_tree";
    homepage = "https://cran.r-project.org/package=data_tree";
  };
}
