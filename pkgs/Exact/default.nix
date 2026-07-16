{
  buildRPackage,
  fetchurl,
  rootSolve,
}:

buildRPackage {
  pname = "Exact";
  version = "3.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Exact_3.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Exact/Exact_3.3.tar.gz"
    ];
    sha256 = "0hikz8f19blywxs66xj6zf4krwyivsy3w165qvrnb0m2l6dx1l7v";
  };

  propagatedBuildInputs = [
    rootSolve
  ];

  meta = {
    description = "R package Exact";
    homepage = "https://cran.r-project.org/package=Exact";
  };
}
