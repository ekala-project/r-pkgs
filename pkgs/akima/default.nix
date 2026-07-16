{
  buildRPackage,
  fetchurl,
  sp,
}:

buildRPackage {
  pname = "akima";
  version = "0.6-3.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/akima_0.6-3.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/akima/akima_0.6-3.6.tar.gz"
    ];
    sha256 = "1j5nkn2m06gnzihmp48rb7zrvam8xx4pnqvxh183xm67qi3pqi68";
  };

  propagatedBuildInputs = [
    sp
  ];

  meta = {
    description = "R package akima";
    homepage = "https://cran.r-project.org/package=akima";
  };
}
