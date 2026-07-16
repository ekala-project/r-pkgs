{
  buildRPackage,
  fetchurl,
  lifecycle,
  sandwich,
}:

buildRPackage {
  pname = "clubSandwich";
  version = "0.7.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/clubSandwich_0.7.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/clubSandwich/clubSandwich_0.7.0.tar.gz"
    ];
    sha256 = "1v9j0024w310vmdzkf8ifkadq3l299z3xkjd6p8vh8h0hkarrkgk";
  };

  propagatedBuildInputs = [
    lifecycle
    sandwich
  ];

  meta = {
    description = "R package clubSandwich";
    homepage = "https://cran.r-project.org/package=clubSandwich";
  };
}
