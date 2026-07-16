{
  buildRPackage,
  fetchurl,
  lattice,
}:

buildRPackage {
  pname = "zoo";
  version = "1.8-15";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/zoo_1.8-15.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/zoo/zoo_1.8-15.tar.gz"
    ];
    sha256 = "1sk131fi9sxia6h3jgn461jz56hhfvyq53dw0a1g5r6ysfvkklf0";
  };

  propagatedBuildInputs = [
    lattice
  ];

  meta = {
    description = "R package zoo";
    homepage = "https://cran.r-project.org/package=zoo";
  };
}
