{
  buildRPackage,
  fetchurl,
  futile_logger,
}:

buildRPackage {
  pname = "VennDiagram";
  version = "1.8.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/VennDiagram_1.8.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/VennDiagram/VennDiagram_1.8.2.tar.gz"
    ];
    sha256 = "14zxi629z0vscgzikdiha8pqr8qcby2ds51z4yv7wzskg8dpbf94";
  };

  propagatedBuildInputs = [
    futile_logger
  ];

  meta = {
    description = "R package VennDiagram";
    homepage = "https://cran.r-project.org/package=VennDiagram";
  };
}
