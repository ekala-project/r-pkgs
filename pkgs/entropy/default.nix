{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "entropy";
  version = "1.3.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/entropy_1.3.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/entropy/entropy_1.3.2.tar.gz"
    ];
    sha256 = "19bnml9dlm5pgfc37pl1pi377vxyjb3jzg4cjifc9c4rizg2l6lh";
  };

  meta = {
    description = "R package entropy";
    homepage = "https://cran.r-project.org/package=entropy";
  };
}
