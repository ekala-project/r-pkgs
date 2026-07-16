{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "numDeriv";
  version = "2016.8-1.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/numDeriv_2016.8-1.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/numDeriv/numDeriv_2016.8-1.1.tar.gz"
    ];
    sha256 = "0idk02pqkziik932bd8k72d1q775g1is3m4bc861pcxfz6gx3i6q";
  };

  meta = {
    description = "R package numDeriv";
    homepage = "https://cran.r-project.org/package=numDeriv";
  };
}
