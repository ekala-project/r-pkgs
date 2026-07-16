{
  buildRPackage,
  fetchurl,
  MASS,
  lme4,
  ordinal,
  survival,
  tibble,
}:

buildRPackage {
  pname = "jomo";
  version = "2.7-6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/jomo_2.7-6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/jomo/jomo_2.7-6.tar.gz"
    ];
    sha256 = "1np2sw0kq21kdhkv227pz2rqvpxg06r3mk93ggkrz5nl45ajmyiz";
  };

  propagatedBuildInputs = [
    MASS
    lme4
    ordinal
    survival
    tibble
  ];

  meta = {
    description = "R package jomo";
    homepage = "https://cran.r-project.org/package=jomo";
  };
}
