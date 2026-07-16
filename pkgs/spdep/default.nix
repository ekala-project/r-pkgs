{
  buildRPackage,
  fetchurl,
  boot,
  deldir,
  e1071,
  s2,
  sf,
  sp,
  spData,
  units,
}:

buildRPackage {
  pname = "spdep";
  version = "1.4-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/spdep_1.4-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/spdep/spdep_1.4-2.tar.gz"
    ];
    sha256 = "121n14251c1x2lk30qblf6hf2bmizz4j1s15gx1pwvmjj8iqkl4c";
  };

  propagatedBuildInputs = [
    boot
    deldir
    e1071
    s2
    sf
    sp
    spData
    units
  ];

  meta = {
    description = "R package spdep";
    homepage = "https://cran.r-project.org/package=spdep";
  };
}
