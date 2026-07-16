{
  buildRPackage,
  fetchurl,
  Rcpp,
  qpdf,
}:

buildRPackage {
  pname = "pdftools";
  version = "3.9.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pdftools_3.9.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pdftools/pdftools_3.9.0.tar.gz"
    ];
    sha256 = "1ml8xgn207wk8cqy149gqcwzprirndjl4gnpr6pd5knqb6dvn86s";
  };

  propagatedBuildInputs = [
    Rcpp
    qpdf
  ];

  meta = {
    description = "R package pdftools";
    homepage = "https://cran.r-project.org/package=pdftools";
  };
}
