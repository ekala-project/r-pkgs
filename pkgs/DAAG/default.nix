{
  buildRPackage,
  fetchurl,
  Rdpack,
  lattice,
  latticeExtra,
}:

buildRPackage {
  pname = "DAAG";
  version = "1.25.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/DAAG_1.25.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/DAAG/DAAG_1.25.7.tar.gz"
    ];
    sha256 = "1sk0xlglhg4jv901178bgmb52s3khvs3ry6vhr5dvj5ra7rmf0ym";
  };

  propagatedBuildInputs = [
    Rdpack
    lattice
    latticeExtra
  ];

  meta = {
    description = "R package DAAG";
    homepage = "https://cran.r-project.org/package=DAAG";
  };
}
