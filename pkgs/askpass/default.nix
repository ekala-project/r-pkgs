{
  buildRPackage,
  fetchurl,
  sys,
}:

buildRPackage {
  pname = "askpass";
  version = "1.2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/askpass_1.2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/askpass/askpass_1.2.1.tar.gz"
    ];
    sha256 = "1pf7q2p0caxnb22zvg6yj250b817drldk5d7rvr4i9s49jkhc8bc";
  };

  propagatedBuildInputs = [
    sys
  ];

  meta = {
    description = "R package askpass";
    homepage = "https://cran.r-project.org/package=askpass";
  };
}
