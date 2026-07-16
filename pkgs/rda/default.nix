{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rda";
  version = "1.2-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rda_1.2-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rda/rda_1.2-1.tar.gz"
    ];
    sha256 = "16mf76hlhii30f2m5xlwa4gv4a5ydnla2kz6ylcka4y9668ql0rp";
  };

  meta = {
    description = "R package rda";
    homepage = "https://cran.r-project.org/package=rda";
  };
}
