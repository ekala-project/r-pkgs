{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "stddiff";
  version = "3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/stddiff_3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/stddiff/stddiff_3.1.tar.gz"
    ];
    sha256 = "1lirfxqiq59vhjkq1zv27ycybbs9n62c14klkkcf74j15a54cmbn";
  };

  meta = {
    description = "R package stddiff";
    homepage = "https://cran.r-project.org/package=stddiff";
  };
}
