{
  buildRPackage,
  fetchurl,
  Matrix,
  gmm,
  mvtnorm,
}:

buildRPackage {
  pname = "tmvtnorm";
  version = "1.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tmvtnorm_1.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tmvtnorm/tmvtnorm_1.7.tar.gz"
    ];
    sha256 = "1n0vac7xc9ri2417bwhy6j4pjdyxyavq6zaxkw0bakmwwcqhn62b";
  };

  propagatedBuildInputs = [
    Matrix
    gmm
    mvtnorm
  ];

  meta = {
    description = "R package tmvtnorm";
    homepage = "https://cran.r-project.org/package=tmvtnorm";
  };
}
