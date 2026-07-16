{
  buildRPackage,
  fetchurl,
  Rcpp,
  curl,
  digest,
  pdftools,
  rappdirs,
}:

buildRPackage {
  pname = "tesseract";
  version = "5.2.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tesseract_5.2.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tesseract/tesseract_5.2.5.tar.gz"
    ];
    sha256 = "1ax632rx09xr3a7w8v0qv7z7vpn8qgsalg81jr0iyyhkjxaa1vyy";
  };

  propagatedBuildInputs = [
    Rcpp
    curl
    digest
    pdftools
    rappdirs
  ];

  meta = {
    description = "R package tesseract";
    homepage = "https://cran.r-project.org/package=tesseract";
  };
}
