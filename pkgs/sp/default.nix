{
  buildRPackage,
  fetchurl,
  lattice,
}:

buildRPackage {
  pname = "sp";
  version = "2.2-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sp_2.2-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sp/sp_2.2-1.tar.gz"
    ];
    sha256 = "0lknhmyava1a1f7pvc5zj4k4jyhcmyv5f1vipgyhhjkqphrlayi7";
  };

  propagatedBuildInputs = [
    lattice
  ];

  meta = {
    description = "R package sp";
    homepage = "https://cran.r-project.org/package=sp";
  };
}
