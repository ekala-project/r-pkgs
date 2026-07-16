{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "oz";
  version = "1.0-22";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/oz_1.0-22.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/oz/oz_1.0-22.tar.gz"
    ];
    sha256 = "042f2pplhwj6q7n87qk6r2xcriif76ywyf4mcx3xsr2fjislajw9";
  };

  meta = {
    description = "R package oz";
    homepage = "https://cran.r-project.org/package=oz";
  };
}
