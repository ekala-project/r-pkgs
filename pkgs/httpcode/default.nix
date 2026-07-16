{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "httpcode";
  version = "0.3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/httpcode_0.3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/httpcode/httpcode_0.3.0.tar.gz"
    ];
    sha256 = "0xig0rvc81hg7mw0iq9s0an1nw24fg0kfs2p2n6dzhwl9w506fjr";
  };

  meta = {
    description = "R package httpcode";
    homepage = "https://cran.r-project.org/package=httpcode";
  };
}
