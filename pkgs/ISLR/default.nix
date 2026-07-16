{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "ISLR";
  version = "1.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ISLR_1.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ISLR/ISLR_1.4.tar.gz"
    ];
    sha256 = "1hr0r00m9y39gzb4q7nip07mhxmaly12zwmwkisyx641h0vcclbi";
  };

  meta = {
    description = "R package ISLR";
    homepage = "https://cran.r-project.org/package=ISLR";
  };
}
