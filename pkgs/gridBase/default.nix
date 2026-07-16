{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "gridBase";
  version = "0.4-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gridBase_0.4-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gridBase/gridBase_0.4-7.tar.gz"
    ];
    sha256 = "09jzw4rzwf2y5lcz7b16mb68pn0fqigv34ff7lr6w3yi9k91i1xy";
  };

  meta = {
    description = "R package gridBase";
    homepage = "https://cran.r-project.org/package=gridBase";
  };
}
