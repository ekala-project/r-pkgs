{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "box";
  version = "1.2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/box_1.2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/box/box_1.2.2.tar.gz"
    ];
    sha256 = "0yrxqkq0c10k85rnp64154dyakf06apy2rm6q8f7x5zk7kkfs9mf";
  };

  meta = {
    description = "R package box";
    homepage = "https://cran.r-project.org/package=box";
  };
}
