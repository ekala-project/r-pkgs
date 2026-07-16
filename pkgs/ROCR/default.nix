{
  buildRPackage,
  fetchurl,
  gplots,
}:

buildRPackage {
  pname = "ROCR";
  version = "1.0-12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ROCR_1.0-12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ROCR/ROCR_1.0-12.tar.gz"
    ];
    sha256 = "1ywmij9pcspjn10j1p6hp42p79xm2hyyzfqny2167kz2fzckp411";
  };

  propagatedBuildInputs = [
    gplots
  ];

  meta = {
    description = "R package ROCR";
    homepage = "https://cran.r-project.org/package=ROCR";
  };
}
