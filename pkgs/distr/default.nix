{
  buildRPackage,
  fetchurl,
  MASS,
  sfsmisc,
  startupmsg,
}:

buildRPackage {
  pname = "distr";
  version = "2.9.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/distr_2.9.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/distr/distr_2.9.7.tar.gz"
    ];
    sha256 = "0k13kfjs1kcmxxcb942wswhnbx7xzv8njnclg864yl6lpgpcvyrk";
  };

  propagatedBuildInputs = [
    MASS
    sfsmisc
    startupmsg
  ];

  meta = {
    description = "R package distr";
    homepage = "https://cran.r-project.org/package=distr";
  };
}
