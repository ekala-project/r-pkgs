{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "proxy";
  version = "0.4-29";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/proxy_0.4-29.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/proxy/proxy_0.4-29.tar.gz"
    ];
    sha256 = "0ny3jam5npbvd8w9hrn8cl4ai49cip58h0agaswb3v1fxwv0xsy6";
  };

  meta = {
    description = "R package proxy";
    homepage = "https://cran.r-project.org/package=proxy";
  };
}
