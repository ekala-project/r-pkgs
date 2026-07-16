{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "uroot";
  version = "2.1-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/uroot_2.1-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/uroot/uroot_2.1-3.tar.gz"
    ];
    sha256 = "0bscxlpy1jrgabif2kk9xjb1x095x21psmqwr0h81719378j7xih";
  };

  meta = {
    description = "R package uroot";
    homepage = "https://cran.r-project.org/package=uroot";
  };
}
