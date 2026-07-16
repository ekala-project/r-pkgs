{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "binom";
  version = "1.1-1.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/binom_1.1-1.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/binom/binom_1.1-1.1.tar.gz"
    ];
    sha256 = "1yxyhsd0savwirlmgnq6973slfakqyfvjm0zz60cmc9v490my8gf";
  };

  meta = {
    description = "R package binom";
    homepage = "https://cran.r-project.org/package=binom";
  };
}
