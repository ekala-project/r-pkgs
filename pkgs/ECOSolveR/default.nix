{
  buildRPackage,
  fetchurl,
  cli,
}:

buildRPackage {
  pname = "ECOSolveR";
  version = "0.6.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ECOSolveR_0.6.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ECOSolveR/ECOSolveR_0.6.1.tar.gz"
    ];
    sha256 = "0zfn05lnmpnjnqp5scfdd9m2lbnff79y4a7xjkzr88bkdxbhyq93";
  };

  propagatedBuildInputs = [
    cli
  ];

  meta = {
    description = "R package ECOSolveR";
    homepage = "https://cran.r-project.org/package=ECOSolveR";
  };
}
