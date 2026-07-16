{
  buildRPackage,
  fetchurl,
  quadprog,
}:

buildRPackage {
  pname = "BB";
  version = "2026.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/BB_2026.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/BB/BB_2026.1.0.tar.gz"
    ];
    sha256 = "1apvzypndzf1bix93pnhh9x9lkd8qgs1g9v1s0mkxh85abp5xggd";
  };

  propagatedBuildInputs = [
    quadprog
  ];

  meta = {
    description = "R package BB";
    homepage = "https://cran.r-project.org/package=BB";
  };
}
