{
  buildRPackage,
  fetchurl,
  lattice,
}:

buildRPackage {
  pname = "locfit";
  version = "1.5-9.12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/locfit_1.5-9.12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/locfit/locfit_1.5-9.12.tar.gz"
    ];
    sha256 = "0hwklfvkrqx372y60z4ahvxscckan7bwn1birdpplmgk0zabjcgs";
  };

  propagatedBuildInputs = [
    lattice
  ];

  meta = {
    description = "R package locfit";
    homepage = "https://cran.r-project.org/package=locfit";
  };
}
