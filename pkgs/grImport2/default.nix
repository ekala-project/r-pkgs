{
  buildRPackage,
  fetchurl,
  XML,
  base64enc,
  jpeg,
  png,
}:

buildRPackage {
  pname = "grImport2";
  version = "0.3-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/grImport2_0.3-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/grImport2/grImport2_0.3-3.tar.gz"
    ];
    sha256 = "11glz1yi76235x3di9r7nny0nfcisk12acc4xsm4m2d9ingjh4pn";
  };

  propagatedBuildInputs = [
    XML
    base64enc
    jpeg
    png
  ];

  meta = {
    description = "R package grImport2";
    homepage = "https://cran.r-project.org/package=grImport2";
  };
}
