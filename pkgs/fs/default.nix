{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "fs";
  version = "2.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fs_2.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fs/fs_2.1.0.tar.gz"
    ];
    sha256 = "1k99k1w781zlxpv4nw0x7cjchzqr7wr2wlsb2kmlqp6n2w8sz23h";
  };

  meta = {
    description = "R package fs";
    homepage = "https://cran.r-project.org/package=fs";
  };
}
