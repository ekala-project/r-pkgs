{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "fdrtool";
  version = "1.2.18";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fdrtool_1.2.18.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fdrtool/fdrtool_1.2.18.tar.gz"
    ];
    sha256 = "1vxswr56c63vvl2q6m0j0a5psdw724vspf6zxlr1k9zsdfcnd6b4";
  };

  meta = {
    description = "R package fdrtool";
    homepage = "https://cran.r-project.org/package=fdrtool";
  };
}
