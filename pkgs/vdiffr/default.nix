{
  buildRPackage,
  fetchurl,
  cpp11,
  diffobj,
  glue,
  htmltools,
  lifecycle,
  rlang,
  testthat,
  xml2,
}:

buildRPackage {
  pname = "vdiffr";
  version = "1.0.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/vdiffr_1.0.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/vdiffr/vdiffr_1.0.9.tar.gz"
    ];
    sha256 = "063i8v5lknlwfpjvf3hm3yj5dsmdrgg6q2r941vj02nfr0zh2kcc";
  };

  propagatedBuildInputs = [
    cpp11
    diffobj
    glue
    htmltools
    lifecycle
    rlang
    testthat
    xml2
  ];

  meta = {
    description = "R package vdiffr";
    homepage = "https://cran.r-project.org/package=vdiffr";
  };
}
