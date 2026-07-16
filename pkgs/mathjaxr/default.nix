{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "mathjaxr";
  version = "2.0-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mathjaxr_2.0-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mathjaxr/mathjaxr_2.0-0.tar.gz"
    ];
    sha256 = "1hsxhpxqw1lk00k187k9icn9k401fq8mzkn8g9s4bgq21m0prpsy";
  };

  meta = {
    description = "R package mathjaxr";
    homepage = "https://cran.r-project.org/package=mathjaxr";
  };
}
