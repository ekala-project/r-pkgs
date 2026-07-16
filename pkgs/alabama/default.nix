{
  buildRPackage,
  fetchurl,
  numDeriv,
}:

buildRPackage {
  pname = "alabama";
  version = "2025.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/alabama_2025.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/alabama/alabama_2025.1.0.tar.gz"
    ];
    sha256 = "1k6p0l3pvg1rvv8sql7p28n1sk6fr9gkbag7yqrp5xjrg9hlbn7s";
  };

  propagatedBuildInputs = [
    numDeriv
  ];

  meta = {
    description = "R package alabama";
    homepage = "https://cran.r-project.org/package=alabama";
  };
}
