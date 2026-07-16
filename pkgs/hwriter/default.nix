{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "hwriter";
  version = "1.3.2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/hwriter_1.3.2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/hwriter/hwriter_1.3.2.1.tar.gz"
    ];
    sha256 = "1wxnv8h9cs65m3z01dpnnkgn2cpwfsck70g1jz9nbkr7mdaa4bzd";
  };

  meta = {
    description = "R package hwriter";
    homepage = "https://cran.r-project.org/package=hwriter";
  };
}
