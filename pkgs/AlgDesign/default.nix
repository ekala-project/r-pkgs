{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "AlgDesign";
  version = "1.2.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/AlgDesign_1.2.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/AlgDesign/AlgDesign_1.2.1.2.tar.gz"
    ];
    sha256 = "09bn1d6naj05hbzkgnkv31s02w5qky74i63k391b4pkc5ahcfbb9";
  };

  meta = {
    description = "R package AlgDesign";
    homepage = "https://cran.r-project.org/package=AlgDesign";
  };
}
