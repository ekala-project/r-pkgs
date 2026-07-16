{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "webfakes";
  version = "1.5.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/webfakes_1.5.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/webfakes/webfakes_1.5.0.tar.gz"
    ];
    sha256 = "0jgnzgjsi7yh7w2z7pw0bs5qdf4hwabc79b0ah8ahff0099mdyia";
  };

  meta = {
    description = "R package webfakes";
    homepage = "https://cran.r-project.org/package=webfakes";
  };
}
