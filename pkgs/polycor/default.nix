{
  buildRPackage,
  fetchurl,
  Matrix,
  admisc,
  mvtnorm,
}:

buildRPackage {
  pname = "polycor";
  version = "0.8-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/polycor_0.8-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/polycor/polycor_0.8-2.tar.gz"
    ];
    sha256 = "0nhzjpv07kwdc234k84kqr2yiixqpawxaqmaln3q8fx6ym49b3k1";
  };

  propagatedBuildInputs = [
    Matrix
    admisc
    mvtnorm
  ];

  meta = {
    description = "R package polycor";
    homepage = "https://cran.r-project.org/package=polycor";
  };
}
