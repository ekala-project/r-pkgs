{
  buildRPackage,
  fetchurl,
  calibrate,
}:

buildRPackage {
  pname = "qqman";
  version = "0.1.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/qqman_0.1.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/qqman/qqman_0.1.9.tar.gz"
    ];
    sha256 = "04xwqp4bnblrn0qijqv9bjdyy7b0vlflf87jg15ifxfkf4br6siz";
  };

  propagatedBuildInputs = [
    calibrate
  ];

  meta = {
    description = "R package qqman";
    homepage = "https://cran.r-project.org/package=qqman";
  };
}
