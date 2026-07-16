{
  buildRPackage,
  fetchurl,
  ROCR,
  data_table,
}:

buildRPackage {
  pname = "cvAUC";
  version = "1.1.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/cvAUC_1.1.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/cvAUC/cvAUC_1.1.4.tar.gz"
    ];
    sha256 = "1m2y50a1yapf1c74km9a4r47ds2z2bfp4wwwkqin7swv9v1s7d28";
  };

  propagatedBuildInputs = [
    ROCR
    data_table
  ];

  meta = {
    description = "R package cvAUC";
    homepage = "https://cran.r-project.org/package=cvAUC";
  };
}
