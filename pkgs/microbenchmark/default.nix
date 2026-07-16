{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "microbenchmark";
  version = "1.5.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/microbenchmark_1.5.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/microbenchmark/microbenchmark_1.5.0.tar.gz"
    ];
    sha256 = "0pvn94zfv50imz5g39wyqbqaa7fkl0h5sy98ic9as4b842lr47ix";
  };

  meta = {
    description = "R package microbenchmark";
    homepage = "https://cran.r-project.org/package=microbenchmark";
  };
}
