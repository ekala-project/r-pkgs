{
  buildRPackage,
  fetchurl,
  RColorBrewer,
  data_table,
  lattice,
  rlang,
  survival,
  viridisLite,
}:

buildRPackage {
  pname = "mstate";
  version = "0.3.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mstate_0.3.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mstate/mstate_0.3.3.tar.gz"
    ];
    sha256 = "0vxfayp9d21hgihrb3bfn04y76qgvqx0mcwbw5w6izpbqcwxlcw5";
  };

  propagatedBuildInputs = [
    RColorBrewer
    data_table
    lattice
    rlang
    survival
    viridisLite
  ];

  meta = {
    description = "R package mstate";
    homepage = "https://cran.r-project.org/package=mstate";
  };
}
