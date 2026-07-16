{
  buildRPackage,
  fetchurl,
  DBI,
}:

buildRPackage {
  pname = "RMySQL";
  version = "0.11.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RMySQL_0.11.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RMySQL/RMySQL_0.11.3.tar.gz"
    ];
    sha256 = "12kr1n59m48ay5kg7zv3jz3bjf0f2dhpm1k2wminms9ibarpnd64";
  };

  propagatedBuildInputs = [
    DBI
  ];

  meta = {
    description = "R package RMySQL";
    homepage = "https://cran.r-project.org/package=RMySQL";
  };
}
