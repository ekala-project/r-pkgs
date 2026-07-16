{
  buildRPackage,
  fetchurl,
  MASS,
  combinat,
  gdata,
  gtools,
  mvtnorm,
}:

buildRPackage {
  pname = "genetics";
  version = "1.3.8.1.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/genetics_1.3.8.1.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/genetics/genetics_1.3.8.1.3.tar.gz"
    ];
    sha256 = "0lljxvz7nc6y2z303icphar2niir0i407w5cyhy2pwspd9gwkwpy";
  };

  propagatedBuildInputs = [
    MASS
    combinat
    gdata
    gtools
    mvtnorm
  ];

  meta = {
    description = "R package genetics";
    homepage = "https://cran.r-project.org/package=genetics";
  };
}
