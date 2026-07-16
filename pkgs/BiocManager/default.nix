{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "BiocManager";
  version = "1.30.27";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/BiocManager_1.30.27.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/BiocManager/BiocManager_1.30.27.tar.gz"
    ];
    sha256 = "1dgv0gfa7ff3w96dax8p7jna1bf2652sav2mhn82gj02jvqdrgxc";
  };

  meta = {
    description = "R package BiocManager";
    homepage = "https://cran.r-project.org/package=BiocManager";
  };
}
