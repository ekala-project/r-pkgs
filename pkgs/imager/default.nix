{
  buildRPackage,
  fetchurl,
  Rcpp,
  downloader,
  igraph,
  jpeg,
  magrittr,
  png,
  purrr,
  readbitmap,
  stringr,
}:

buildRPackage {
  pname = "imager";
  version = "1.0.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/imager_1.0.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/imager/imager_1.0.8.tar.gz"
    ];
    sha256 = "1d1k9cshbf24dd9d65gb8bwl511gpsbzrxwcvxrd42ij7wjqra2w";
  };

  propagatedBuildInputs = [
    Rcpp
    downloader
    igraph
    jpeg
    magrittr
    png
    purrr
    readbitmap
    stringr
  ];

  meta = {
    description = "R package imager";
    homepage = "https://cran.r-project.org/package=imager";
  };
}
