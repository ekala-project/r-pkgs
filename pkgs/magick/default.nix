{
  buildRPackage,
  fetchurl,
  Rcpp,
  curl,
  magrittr,
}:

buildRPackage {
  pname = "magick";
  version = "2.9.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/magick_2.9.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/magick/magick_2.9.1.tar.gz"
    ];
    sha256 = "17914pa6x9df1pqi1912mg0hsczz7jr7aa7ggxznbvwx4xr61b16";
  };

  propagatedBuildInputs = [
    Rcpp
    curl
    magrittr
  ];

  meta = {
    description = "R package magick";
    homepage = "https://cran.r-project.org/package=magick";
  };
}
