{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "pracma";
  version = "2.4.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pracma_2.4.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pracma/pracma_2.4.6.tar.gz"
    ];
    sha256 = "0lj5mrh0xmwzry067p6ba1qlrvxsw49dpk3l2mjyp9kxxhqvhmqq";
  };

  meta = {
    description = "R package pracma";
    homepage = "https://cran.r-project.org/package=pracma";
  };
}
