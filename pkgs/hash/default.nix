{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "hash";
  version = "2.2.6.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/hash_2.2.6.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/hash/hash_2.2.6.4.tar.gz"
    ];
    sha256 = "0ylvkwn2m6w9whgpp3zn7r529jm5n0a7rsrb3dplkiij52d78y6x";
  };

  meta = {
    description = "R package hash";
    homepage = "https://cran.r-project.org/package=hash";
  };
}
