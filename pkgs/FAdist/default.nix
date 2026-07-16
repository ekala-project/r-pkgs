{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "FAdist";
  version = "2.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/FAdist_2.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/FAdist/FAdist_2.4.tar.gz"
    ];
    sha256 = "166w9i8fgklx12jiq4n7l081znmdi6yvazhlxny4rgqif0z2kr9q";
  };

  meta = {
    description = "R package FAdist";
    homepage = "https://cran.r-project.org/package=FAdist";
  };
}
