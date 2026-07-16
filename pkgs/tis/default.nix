{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "tis";
  version = "1.39";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tis_1.39.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tis/tis_1.39.tar.gz"
    ];
    sha256 = "1sq3acz8mybsbxng5fga4ynqvh1ly9hs3ca727jiyx1gam712mis";
  };

  meta = {
    description = "R package tis";
    homepage = "https://cran.r-project.org/package=tis";
  };
}
