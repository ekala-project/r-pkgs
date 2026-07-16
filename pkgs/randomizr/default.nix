{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "randomizr";
  version = "1.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/randomizr_1.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/randomizr/randomizr_1.0.1.tar.gz"
    ];
    sha256 = "0948pnmn2hpwk85x9hqh5fnmzrq8kn24pilsrnjd876aszyzf1ka";
  };

  meta = {
    description = "R package randomizr";
    homepage = "https://cran.r-project.org/package=randomizr";
  };
}
