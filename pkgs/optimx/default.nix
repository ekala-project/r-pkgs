{
  buildRPackage,
  fetchurl,
  nloptr,
  numDeriv,
  pracma,
}:

buildRPackage {
  pname = "optimx";
  version = "2025-4.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/optimx_2025-4.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/optimx/optimx_2025-4.9.tar.gz"
    ];
    sha256 = "0m0q3miiqhv185y4my5ylschmwg1kibbihzlqb89zwp3f6rqmdhh";
  };

  propagatedBuildInputs = [
    nloptr
    numDeriv
    pracma
  ];

  meta = {
    description = "R package optimx";
    homepage = "https://cran.r-project.org/package=optimx";
  };
}
