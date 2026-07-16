{
  buildRPackage,
  fetchurl,
  Rcpp,
  stringi,
  zip,
}:

buildRPackage {
  pname = "openxlsx";
  version = "4.2.8.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/openxlsx_4.2.8.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/openxlsx/openxlsx_4.2.8.1.tar.gz"
    ];
    sha256 = "0qqsqyan30f2273afa3lf0l0vm5c1q5f1az69ypnwr5rilf7rva6";
  };

  propagatedBuildInputs = [
    Rcpp
    stringi
    zip
  ];

  meta = {
    description = "R package openxlsx";
    homepage = "https://cran.r-project.org/package=openxlsx";
  };
}
