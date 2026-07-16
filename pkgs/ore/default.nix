{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "ore";
  version = "1.7.5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ore_1.7.5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ore/ore_1.7.5.1.tar.gz"
    ];
    sha256 = "11b952icdjv2g3pfbap7kyphwvbl3dssyvd61f0wrv7prscl8pbz";
  };

  meta = {
    description = "R package ore";
    homepage = "https://cran.r-project.org/package=ore";
  };
}
