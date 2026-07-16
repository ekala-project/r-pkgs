{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "xfun";
  version = "0.57";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/xfun_0.57.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/xfun/xfun_0.57.tar.gz"
    ];
    sha256 = "0xglnzj2wg3jcfsnc88whi1ip2kr3hmbgn9xv33764p2bz8xw32s";
  };

  meta = {
    description = "R package xfun";
    homepage = "https://cran.r-project.org/package=xfun";
  };
}
