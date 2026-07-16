{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "collections";
  version = "0.3.12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/collections_0.3.12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/collections/collections_0.3.12.tar.gz"
    ];
    sha256 = "03f6153hj5i3s4z6r4nvzwpkyr2vrd9hyh88l1a9x261bgk3xrk0";
  };

  meta = {
    description = "R package collections";
    homepage = "https://cran.r-project.org/package=collections";
  };
}
