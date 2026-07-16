{
  buildRPackage,
  fetchurl,
  dplyr,
  rlang,
  tibble,
}:

buildRPackage {
  pname = "benchmarkmeData";
  version = "2.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/benchmarkmeData_2.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/benchmarkmeData/benchmarkmeData_2.0.0.tar.gz"
    ];
    sha256 = "05qlmmdni9ywcgkq4r0binkbwzva6zn7ijlx548x0j65l62wznm8";
  };

  propagatedBuildInputs = [
    dplyr
    rlang
    tibble
  ];

  meta = {
    description = "R package benchmarkmeData";
    homepage = "https://cran.r-project.org/package=benchmarkmeData";
  };
}
