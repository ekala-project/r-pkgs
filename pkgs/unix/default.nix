{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "unix";
  version = "1.6.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/unix_1.6.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/unix/unix_1.6.0.tar.gz"
    ];
    sha256 = "1x5aicvk266lz3gjn09yca3nar44kv2f5cj9hxakv1rxbdjkznlw";
  };

  meta = {
    description = "R package unix";
    homepage = "https://cran.r-project.org/package=unix";
  };
}
