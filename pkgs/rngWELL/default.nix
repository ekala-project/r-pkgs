{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rngWELL";
  version = "0.10-10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rngWELL_0.10-10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rngWELL/rngWELL_0.10-10.tar.gz"
    ];
    sha256 = "0vspzmic0d1zjfywaa59a4hvp4p1mdifz818sjhmaab27379ji44";
  };

  meta = {
    description = "R package rngWELL";
    homepage = "https://cran.r-project.org/package=rngWELL";
  };
}
