{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "nor1mix";
  version = "1.3-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/nor1mix_1.3-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/nor1mix/nor1mix_1.3-3.tar.gz"
    ];
    sha256 = "0vh7vlvijska09rm0cb2lakwhjm38mc4daksc2zniyj7r3wd1gwp";
  };

  meta = {
    description = "R package nor1mix";
    homepage = "https://cran.r-project.org/package=nor1mix";
  };
}
