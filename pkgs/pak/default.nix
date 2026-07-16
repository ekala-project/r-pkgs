{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "pak";
  version = "0.9.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pak_0.9.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pak/pak_0.9.5.tar.gz"
    ];
    sha256 = "170kg74ndj79m80i2x1h10yb2fwn6kxqsw2bgjv45f5arxy9ky7m";
  };

  meta = {
    description = "R package pak";
    homepage = "https://cran.r-project.org/package=pak";
  };
}
