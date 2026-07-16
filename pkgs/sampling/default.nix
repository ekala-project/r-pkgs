{
  buildRPackage,
  fetchurl,
  MASS,
  lpSolve,
}:

buildRPackage {
  pname = "sampling";
  version = "2.11";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sampling_2.11.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sampling/sampling_2.11.tar.gz"
    ];
    sha256 = "08k4h4ki9xpb2kpml3ld4yjmxirrj5vcs21ic4rj8gl776a3y6ll";
  };

  propagatedBuildInputs = [
    MASS
    lpSolve
  ];

  meta = {
    description = "R package sampling";
    homepage = "https://cran.r-project.org/package=sampling";
  };
}
