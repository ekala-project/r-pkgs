{
  buildRPackage,
  fetchurl,
  DBI,
}:

buildRPackage {
  pname = "duckdb";
  version = "1.5.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/duckdb_1.5.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/duckdb/duckdb_1.5.2.tar.gz"
    ];
    sha256 = "1dldlfwvc33czvlxfmwaj4p9y6sjjj5iqy98yda47a8kclrqmyam";
  };

  propagatedBuildInputs = [
    DBI
  ];

  meta = {
    description = "R package duckdb";
    homepage = "https://cran.r-project.org/package=duckdb";
  };
}
