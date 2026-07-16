{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "evaluate";
  version = "1.0.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/evaluate_1.0.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/evaluate/evaluate_1.0.5.tar.gz"
    ];
    sha256 = "15074xrrlf6j9dxf3fjck2xncabw5nbwnmj7idgqm0lsi2gwgaj7";
  };

  meta = {
    description = "R package evaluate";
    homepage = "https://cran.r-project.org/package=evaluate";
  };
}
