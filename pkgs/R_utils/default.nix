{
  buildRPackage,
  fetchurl,
  R_methodsS3,
  R_oo,
}:

buildRPackage {
  pname = "R_utils";
  version = "2.13.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/R_utils_2.13.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/R_utils/R_utils_2.13.0.tar.gz"
    ];
    sha256 = "09fg7f0z0zdxjndfwmcsyi2z54bp7xxcwdx0hpzji68j9v1l685b";
  };

  propagatedBuildInputs = [
    R_methodsS3
    R_oo
  ];

  meta = {
    description = "R package R_utils";
    homepage = "https://cran.r-project.org/package=R_utils";
  };
}
