{
  buildRPackage,
  fetchurl,
  lattice,
}:

buildRPackage {
  pname = "Matrix";
  version = "1.7-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Matrix_1.7-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Matrix/Matrix_1.7-5.tar.gz"
    ];
    sha256 = "10wazaaya930rsqxzfm5jj66bcv6iv4wxi8cnn5kl0nbggfhx2rh";
  };

  propagatedBuildInputs = [
    lattice
  ];

  meta = {
    description = "R package Matrix";
    homepage = "https://cran.r-project.org/package=Matrix";
  };
}
