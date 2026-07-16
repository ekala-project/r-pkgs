{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "inline";
  version = "0.3.21";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/inline_0.3.21.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/inline/inline_0.3.21.tar.gz"
    ];
    sha256 = "165wg1iyqrcqxrm6k4jb8sdkfc99nrahx35w8sizcirsjc543yby";
  };

  meta = {
    description = "R package inline";
    homepage = "https://cran.r-project.org/package=inline";
  };
}
