{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "lisrelToR";
  version = "0.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lisrelToR_0.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lisrelToR/lisrelToR_0.3.tar.gz"
    ];
    sha256 = "19xl85dkvjpdsmi6y8789zlyccwjf265alsd7985vbkqdzfvpgkb";
  };

  meta = {
    description = "R package lisrelToR";
    homepage = "https://cran.r-project.org/package=lisrelToR";
  };
}
