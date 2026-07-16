{
  buildRPackage,
  fetchurl,
  Matrix,
  spatstat_utils,
}:

buildRPackage {
  pname = "spatstat_data";
  version = "3.1-9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/spatstat_data_3.1-9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/spatstat_data/spatstat_data_3.1-9.tar.gz"
    ];
    sha256 = "0vr4ygwbrwwfx6r2kbvjxa1xxqhdr3ifx18lix875v6irbz4hyz5";
  };

  propagatedBuildInputs = [
    Matrix
    spatstat_utils
  ];

  meta = {
    description = "R package spatstat_data";
    homepage = "https://cran.r-project.org/package=spatstat_data";
  };
}
