{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "sourcetools";
  version = "0.1.7-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sourcetools_0.1.7-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sourcetools/sourcetools_0.1.7-2.tar.gz"
    ];
    sha256 = "19ziwi85khfmscdr1ks9md897r5czxhl6897nnjxzz6ph2vq9r87";
  };

  meta = {
    description = "R package sourcetools";
    homepage = "https://cran.r-project.org/package=sourcetools";
  };
}
