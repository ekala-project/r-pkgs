{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "NLP";
  version = "0.3-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/NLP_0.3-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/NLP/NLP_0.3-2.tar.gz"
    ];
    sha256 = "09a24nlyc1h2a69s87virrcgb3ps2jc14dvwdq3vqdjk9338p7n5";
  };

  meta = {
    description = "R package NLP";
    homepage = "https://cran.r-project.org/package=NLP";
  };
}
