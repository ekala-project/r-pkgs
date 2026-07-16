{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "secretbase";
  version = "1.2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/secretbase_1.2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/secretbase/secretbase_1.2.2.tar.gz"
    ];
    sha256 = "0zgmpa3f1090dmvhmzji1qlgmcxxcizbbv6cscpbcr0snwbqag7h";
  };

  meta = {
    description = "R package secretbase";
    homepage = "https://cran.r-project.org/package=secretbase";
  };
}
