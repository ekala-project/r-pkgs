{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "dtt";
  version = "0.1-2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/dtt_0.1-2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/dtt/dtt_0.1-2.1.tar.gz"
    ];
    sha256 = "113qb6fjp08gcmv4cgq3cm2fk6k3r3j1wfsrygq8889i2bq4a073";
  };

  meta = {
    description = "R package dtt";
    homepage = "https://cran.r-project.org/package=dtt";
  };
}
