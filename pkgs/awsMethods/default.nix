{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "awsMethods";
  version = "1.1-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/awsMethods_1.1-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/awsMethods/awsMethods_1.1-1.tar.gz"
    ];
    sha256 = "0hbmrcpdyg15zg4rysscsmxpxlpy0dkxx2aa63qibq7l1k14v4sh";
  };

  meta = {
    description = "R package awsMethods";
    homepage = "https://cran.r-project.org/package=awsMethods";
  };
}
