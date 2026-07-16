{
  buildRPackage,
  fetchurl,
  Formula,
  maxLik,
}:

buildRPackage {
  pname = "DirichletReg";
  version = "0.7-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/DirichletReg_0.7-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/DirichletReg/DirichletReg_0.7-2.tar.gz"
    ];
    sha256 = "16rdg1vgxrr4gc5fvm3nblbmbgmvicgpk1qsfhf6czn8yj64r2q8";
  };

  propagatedBuildInputs = [
    Formula
    maxLik
  ];

  meta = {
    description = "R package DirichletReg";
    homepage = "https://cran.r-project.org/package=DirichletReg";
  };
}
