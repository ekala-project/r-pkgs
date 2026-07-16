{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "polspline";
  version = "1.1.25";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/polspline_1.1.25.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/polspline/polspline_1.1.25.tar.gz"
    ];
    sha256 = "18wv3v76y4xdlrz7qdp6amr0ynhyqbja1rjqmbz0lc12v56gqhr9";
  };

  meta = {
    description = "R package polspline";
    homepage = "https://cran.r-project.org/package=polspline";
  };
}
