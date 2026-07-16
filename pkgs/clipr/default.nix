{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "clipr";
  version = "0.8.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/clipr_0.8.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/clipr/clipr_0.8.0.tar.gz"
    ];
    sha256 = "1s9vvv3cxnz8w11gsi8z9ddv9jzib5qf5qqxnwqrrv7vj8cr7hij";
  };

  meta = {
    description = "R package clipr";
    homepage = "https://cran.r-project.org/package=clipr";
  };
}
