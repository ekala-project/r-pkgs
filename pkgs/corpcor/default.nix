{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "corpcor";
  version = "1.6.10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/corpcor_1.6.10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/corpcor/corpcor_1.6.10.tar.gz"
    ];
    sha256 = "028fw61n61i79fhnaqx7gmdifdpbvp3yiaq9vvfrbv4k7i84r83i";
  };

  meta = {
    description = "R package corpcor";
    homepage = "https://cran.r-project.org/package=corpcor";
  };
}
