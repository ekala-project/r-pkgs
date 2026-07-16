{
  buildRPackage,
  fetchurl,
  MASS,
  boot,
  mi,
}:

buildRPackage {
  pname = "sem";
  version = "3.1-16";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sem_3.1-16.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sem/sem_3.1-16.tar.gz"
    ];
    sha256 = "0jy9hp85w3lnicymw9881qk7z7ypvz6iy7dd88qqxc6pknzkx7x3";
  };

  propagatedBuildInputs = [
    MASS
    boot
    mi
  ];

  meta = {
    description = "R package sem";
    homepage = "https://cran.r-project.org/package=sem";
  };
}
