{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "bootstrap";
  version = "2019.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bootstrap_2019.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bootstrap/bootstrap_2019.6.tar.gz"
    ];
    sha256 = "1546jqhhw5h177ii8jkdikyd26rv6gwkav816np1zks4p7zgsljj";
  };

  meta = {
    description = "R package bootstrap";
    homepage = "https://cran.r-project.org/package=bootstrap";
  };
}
