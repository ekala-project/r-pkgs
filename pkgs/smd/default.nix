{
  buildRPackage,
  fetchurl,
  MASS,
}:

buildRPackage {
  pname = "smd";
  version = "0.8.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/smd_0.8.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/smd/smd_0.8.0.tar.gz"
    ];
    sha256 = "1f5pph3728jb15bmyv0xdanww490gjm5ixz9dbvdv27av02p12js";
  };

  propagatedBuildInputs = [
    MASS
  ];

  meta = {
    description = "R package smd";
    homepage = "https://cran.r-project.org/package=smd";
  };
}
