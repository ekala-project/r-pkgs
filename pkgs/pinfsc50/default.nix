{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "pinfsc50";
  version = "1.3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pinfsc50_1.3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pinfsc50/pinfsc50_1.3.0.tar.gz"
    ];
    sha256 = "1gs9x328qqvqwx3k4z9jgzq5zb6g8kdz4430n96v7zb78p7jf5lp";
  };

  meta = {
    description = "R package pinfsc50";
    homepage = "https://cran.r-project.org/package=pinfsc50";
  };
}
