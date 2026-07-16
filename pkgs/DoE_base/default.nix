{
  buildRPackage,
  fetchurl,
  MASS,
  combinat,
  conf_design,
  lattice,
  numbers,
  partitions,
  vcd,
}:

buildRPackage {
  pname = "DoE_base";
  version = "1.2-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/DoE_base_1.2-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/DoE_base/DoE_base_1.2-5.tar.gz"
    ];
    sha256 = "1fglnzhjygpq6y967ffw7z7p7c2fiy72ama68lnpkvvvzqm4xk2r";
  };

  propagatedBuildInputs = [
    MASS
    combinat
    conf_design
    lattice
    numbers
    partitions
    vcd
  ];

  meta = {
    description = "R package DoE_base";
    homepage = "https://cran.r-project.org/package=DoE_base";
  };
}
