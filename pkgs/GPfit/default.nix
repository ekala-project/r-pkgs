{
  buildRPackage,
  fetchurl,
  lattice,
  lhs,
}:

buildRPackage {
  pname = "GPfit";
  version = "1.0-9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/GPfit_1.0-9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/GPfit/GPfit_1.0-9.tar.gz"
    ];
    sha256 = "0g38llkzyg6dv1mnq39c0ifb6hkrfwphrbgydlrqkqxy212701v3";
  };

  propagatedBuildInputs = [
    lattice
    lhs
  ];

  meta = {
    description = "R package GPfit";
    homepage = "https://cran.r-project.org/package=GPfit";
  };
}
