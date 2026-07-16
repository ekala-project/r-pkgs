{
  buildRPackage,
  fetchurl,
  Matrix,
}:

buildRPackage {
  pname = "survival";
  version = "3.8-6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/survival_3.8-6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/survival/survival_3.8-6.tar.gz"
    ];
    sha256 = "1mwr4r1567lzl202hg9i3p7bbzyw4ampkwbcdrdfqr3cv0shlk4s";
  };

  propagatedBuildInputs = [
    Matrix
  ];

  meta = {
    description = "R package survival";
    homepage = "https://cran.r-project.org/package=survival";
  };
}
