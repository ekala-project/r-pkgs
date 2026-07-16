{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "pbmcapply";
  version = "1.5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pbmcapply_1.5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pbmcapply/pbmcapply_1.5.1.tar.gz"
    ];
    sha256 = "1p8jf7c4k45482w72sr0jw4jkz787krrxai3sl6jz5l4lda2iz3z";
  };

  meta = {
    description = "R package pbmcapply";
    homepage = "https://cran.r-project.org/package=pbmcapply";
  };
}
