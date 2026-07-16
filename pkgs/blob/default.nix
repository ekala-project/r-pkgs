{
  buildRPackage,
  fetchurl,
  rlang,
  vctrs,
}:

buildRPackage {
  pname = "blob";
  version = "1.3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/blob_1.3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/blob/blob_1.3.0.tar.gz"
    ];
    sha256 = "0cbkihkap93jpak232lqaakn75mghbi42xba4pybp0vns6waxlnl";
  };

  propagatedBuildInputs = [
    rlang
    vctrs
  ];

  meta = {
    description = "R package blob";
    homepage = "https://cran.r-project.org/package=blob";
  };
}
