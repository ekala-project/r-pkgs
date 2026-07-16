{
  buildRPackage,
  fetchurl,
  KernSmooth,
  MASS,
}:

buildRPackage {
  pname = "mpm";
  version = "1.0-23";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mpm_1.0-23.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mpm/mpm_1.0-23.tar.gz"
    ];
    sha256 = "1jpv2ddmw7aarqbbyfys1yb840arw33319wnny3v2hk84hldmayj";
  };

  propagatedBuildInputs = [
    KernSmooth
    MASS
  ];

  meta = {
    description = "R package mpm";
    homepage = "https://cran.r-project.org/package=mpm";
  };
}
