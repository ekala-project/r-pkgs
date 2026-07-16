{
  buildRPackage,
  fetchurl,
  R_cache,
  R_methodsS3,
  R_oo,
  R_utils,
  digest,
}:

buildRPackage {
  pname = "R_rsp";
  version = "0.46.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/R_rsp_0.46.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/R_rsp/R_rsp_0.46.0.tar.gz"
    ];
    sha256 = "1frkgjc2mzvjnay8g5nky1bvxv60wvsypmmdj6mbsfjnzq7ni7qs";
  };

  propagatedBuildInputs = [
    R_cache
    R_methodsS3
    R_oo
    R_utils
    digest
  ];

  meta = {
    description = "R package R_rsp";
    homepage = "https://cran.r-project.org/package=R_rsp";
  };
}
