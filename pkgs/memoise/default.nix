{
  buildRPackage,
  fetchurl,
  cachem,
  rlang,
}:

buildRPackage {
  pname = "memoise";
  version = "2.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/memoise_2.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/memoise/memoise_2.0.1.tar.gz"
    ];
    sha256 = "1srdzv2bp0splislrabmf1sfbqfi3hn189nq7kxhgjn8k3p38l7q";
  };

  propagatedBuildInputs = [
    cachem
    rlang
  ];

  meta = {
    description = "R package memoise";
    homepage = "https://cran.r-project.org/package=memoise";
  };
}
