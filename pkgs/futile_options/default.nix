{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "futile_options";
  version = "1.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/futile_options_1.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/futile_options/futile_options_1.0.1.tar.gz"
    ];
    sha256 = "0w15agpi88y3qkv6fl72zy2pzyplzgvnj41a4ixhg64mw1sck73s";
  };

  meta = {
    description = "R package futile_options";
    homepage = "https://cran.r-project.org/package=futile_options";
  };
}
