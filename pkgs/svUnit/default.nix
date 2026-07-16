{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "svUnit";
  version = "1.0.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/svUnit_1.0.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/svUnit/svUnit_1.0.8.tar.gz"
    ];
    sha256 = "1lkgaz3f0sa93mx56ybbgjwg98w6nxvlvby42v5z9ffwyjhcpbra";
  };

  meta = {
    description = "R package svUnit";
    homepage = "https://cran.r-project.org/package=svUnit";
  };
}
