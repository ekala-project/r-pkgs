{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rJava";
  version = "1.0-18";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rJava_1.0-18.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rJava/rJava_1.0-18.tar.gz"
    ];
    sha256 = "0lpmy4kpjffh305abhcyblwjyh6kkzdy99kycvxdn1fvkkrkknx4";
  };

  meta = {
    description = "R package rJava";
    homepage = "https://cran.r-project.org/package=rJava";
  };
}
