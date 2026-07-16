{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "plotrix";
  version = "3.8-14";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/plotrix_3.8-14.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/plotrix/plotrix_3.8-14.tar.gz"
    ];
    sha256 = "0wkjgm99b170i9fmp4xj6xx6ksjhqks111crlp1wnqi9j71b62w8";
  };

  meta = {
    description = "R package plotrix";
    homepage = "https://cran.r-project.org/package=plotrix";
  };
}
