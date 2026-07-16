{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "AsioHeaders";
  version = "1.30.2-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/AsioHeaders_1.30.2-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/AsioHeaders/AsioHeaders_1.30.2-1.tar.gz"
    ];
    sha256 = "0cdbw8w9mj2a6syqvhb11pyhjdrjg3yb8wsn9gw4ww6cli43pr0v";
  };

  meta = {
    description = "R package AsioHeaders";
    homepage = "https://cran.r-project.org/package=AsioHeaders";
  };
}
