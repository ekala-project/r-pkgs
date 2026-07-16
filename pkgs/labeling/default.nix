{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "labeling";
  version = "0.4.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/labeling_0.4.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/labeling/labeling_0.4.3.tar.gz"
    ];
    sha256 = "1wk4wa1s8f17b5lf8vs5hxsmyadp2ccmyg4hamq7sdvlrk14yby6";
  };

  meta = {
    description = "R package labeling";
    homepage = "https://cran.r-project.org/package=labeling";
  };
}
