{
  buildRPackage,
  fetchurl,
  fastmap,
  rlang,
}:

buildRPackage {
  pname = "cachem";
  version = "1.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/cachem_1.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/cachem/cachem_1.1.0.tar.gz"
    ];
    sha256 = "089f963h59z4n0sj3isjq2h7zw2485qw38jv8zdnbn755by3j22m";
  };

  propagatedBuildInputs = [
    fastmap
    rlang
  ];

  meta = {
    description = "R package cachem";
    homepage = "https://cran.r-project.org/package=cachem";
  };
}
