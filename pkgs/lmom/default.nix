{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "lmom";
  version = "3.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lmom_3.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lmom/lmom_3.3.tar.gz"
    ];
    sha256 = "0n7lyx4a9414f1iwy26cxjfj5gidkpsxi7x8yivlcajlnacaghzx";
  };

  meta = {
    description = "R package lmom";
    homepage = "https://cran.r-project.org/package=lmom";
  };
}
