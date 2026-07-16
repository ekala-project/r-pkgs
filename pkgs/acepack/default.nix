{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "acepack";
  version = "1.6.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/acepack_1.6.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/acepack/acepack_1.6.3.tar.gz"
    ];
    sha256 = "1pxsbvs2nqrlkcizbcvla1wxa07pmw0mm60r4znabpph13ir6c35";
  };

  meta = {
    description = "R package acepack";
    homepage = "https://cran.r-project.org/package=acepack";
  };
}
