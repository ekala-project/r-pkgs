{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "etrunct";
  version = "0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/etrunct_0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/etrunct/etrunct_0.1.tar.gz"
    ];
    sha256 = "0ayazgyqlc8jcqr03cwfmfhm4pck6xri1r6vkgqy4arqkrrnrcqr";
  };

  meta = {
    description = "R package etrunct";
    homepage = "https://cran.r-project.org/package=etrunct";
  };
}
