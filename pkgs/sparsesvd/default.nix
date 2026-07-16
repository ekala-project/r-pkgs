{
  buildRPackage,
  fetchurl,
  Matrix,
}:

buildRPackage {
  pname = "sparsesvd";
  version = "0.2-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sparsesvd_0.2-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sparsesvd/sparsesvd_0.2-3.tar.gz"
    ];
    sha256 = "0qr355n2jpch18bzdhgfa4pdfyy5i3zxfqjy8b0spjii7gxk9wj9";
  };

  propagatedBuildInputs = [
    Matrix
  ];

  meta = {
    description = "R package sparsesvd";
    homepage = "https://cran.r-project.org/package=sparsesvd";
  };
}
