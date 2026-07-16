{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "fANCOVA";
  version = "0.6-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fANCOVA_0.6-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fANCOVA/fANCOVA_0.6-1.tar.gz"
    ];
    sha256 = "04mw0blgpwdk6wdg8llrig43psgc0vb42cbimvzbnym8v503dsn3";
  };

  meta = {
    description = "R package fANCOVA";
    homepage = "https://cran.r-project.org/package=fANCOVA";
  };
}
