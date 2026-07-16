{
  buildRPackage,
  fetchurl,
  randomForest,
}:

buildRPackage {
  pname = "varSelRF";
  version = "0.7-9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/varSelRF_0.7-9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/varSelRF/varSelRF_0.7-9.tar.gz"
    ];
    sha256 = "0v2zakm5k85wkvsn3hw2l7rfw6ascr1kq7xz71hikif7j06f18h5";
  };

  propagatedBuildInputs = [
    randomForest
  ];

  meta = {
    description = "R package varSelRF";
    homepage = "https://cran.r-project.org/package=varSelRF";
  };
}
