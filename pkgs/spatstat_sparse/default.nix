{
  buildRPackage,
  fetchurl,
  Matrix,
  abind,
  spatstat_utils,
  tensor,
}:

buildRPackage {
  pname = "spatstat_sparse";
  version = "3.2-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/spatstat_sparse_3.2-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/spatstat_sparse/spatstat_sparse_3.2-0.tar.gz"
    ];
    sha256 = "0ildmi6qwgdh2cxb9gxq27532361xdankh62hlkqsi0l90gwbgc0";
  };

  propagatedBuildInputs = [
    Matrix
    abind
    spatstat_utils
    tensor
  ];

  meta = {
    description = "R package spatstat_sparse";
    homepage = "https://cran.r-project.org/package=spatstat_sparse";
  };
}
