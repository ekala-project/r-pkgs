{
  buildRPackage,
  fetchurl,
  R6,
  RColorBrewer,
  cli,
  farver,
  glue,
  labeling,
  lifecycle,
  rlang,
  viridisLite,
}:

buildRPackage {
  pname = "scales";
  version = "1.4.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/scales_1.4.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/scales/scales_1.4.0.tar.gz"
    ];
    sha256 = "1vnfhg4bg328vmvja6rzhwbsn8s70a27b8ngjmx2srcjikqgapnm";
  };

  propagatedBuildInputs = [
    R6
    RColorBrewer
    cli
    farver
    glue
    labeling
    lifecycle
    rlang
    viridisLite
  ];

  meta = {
    description = "R package scales";
    homepage = "https://cran.r-project.org/package=scales";
  };
}
