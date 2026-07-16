{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "XML";
  version = "3.99-0.23";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/XML_3.99-0.23.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/XML/XML_3.99-0.23.tar.gz"
    ];
    sha256 = "160rsqqwv22y87hl1mbp32mxls43qvgv7hmfdlch7k1waq8kxlgc";
  };

  meta = {
    description = "R package XML";
    homepage = "https://cran.r-project.org/package=XML";
  };
}
