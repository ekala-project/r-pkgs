{
  buildRPackage,
  fetchurl,
  DBI,
}:

buildRPackage {
  pname = "biglm";
  version = "0.9-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/biglm_0.9-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/biglm/biglm_0.9-3.tar.gz"
    ];
    sha256 = "0n0dkazq74s3lml0ds9l38kzgapckjrvwyi62qb1y14cqlylhpc0";
  };

  propagatedBuildInputs = [
    DBI
  ];

  meta = {
    description = "R package biglm";
    homepage = "https://cran.r-project.org/package=biglm";
  };
}
