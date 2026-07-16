{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "multitaper";
  version = "1.0-17";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/multitaper_1.0-17.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/multitaper/multitaper_1.0-17.tar.gz"
    ];
    sha256 = "1wqa2whcjxwjqg9z46i48dvrga17fdj63r05kg993r1fpriclc1l";
  };

  meta = {
    description = "R package multitaper";
    homepage = "https://cran.r-project.org/package=multitaper";
  };
}
