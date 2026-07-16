{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "boot";
  version = "1.3-32";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/boot_1.3-32.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/boot/boot_1.3-32.tar.gz"
    ];
    sha256 = "15vc2d3pg5w326bc8xsygxsrzxhr41xapin5231sahpadznsq19s";
  };

  meta = {
    description = "R package boot";
    homepage = "https://cran.r-project.org/package=boot";
  };
}
