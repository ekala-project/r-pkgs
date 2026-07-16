{
  buildRPackage,
  fetchurl,
  MASS,
  lattice,
  psych,
}:

buildRPackage {
  pname = "nFactors";
  version = "2.4.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/nFactors_2.4.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/nFactors/nFactors_2.4.1.2.tar.gz"
    ];
    sha256 = "1j0w0g20hqfwq4fhhvr9421fnnln1fnvzyb6bc6gj66ar7ngvrqx";
  };

  propagatedBuildInputs = [
    MASS
    lattice
    psych
  ];

  meta = {
    description = "R package nFactors";
    homepage = "https://cran.r-project.org/package=nFactors";
  };
}
