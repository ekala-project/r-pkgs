{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "palmerpenguins";
  version = "0.1.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/palmerpenguins_0.1.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/palmerpenguins/palmerpenguins_0.1.1.tar.gz"
    ];
    sha256 = "1d1h3bfx750is4qqj4w00rcigk9rrdy69bvd5bgqz5y7ls5x8h1a";
  };

  meta = {
    description = "R package palmerpenguins";
    homepage = "https://cran.r-project.org/package=palmerpenguins";
  };
}
