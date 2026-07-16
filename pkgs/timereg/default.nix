{
  buildRPackage,
  fetchurl,
  lava,
  numDeriv,
  survival,
}:

buildRPackage {
  pname = "timereg";
  version = "2.0.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/timereg_2.0.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/timereg/timereg_2.0.7.tar.gz"
    ];
    sha256 = "0pwv918s9wih0s5y2ys0dn1v75a7iybvlxpqkisjyz2hhlvzz1yw";
  };

  propagatedBuildInputs = [
    lava
    numDeriv
    survival
  ];

  meta = {
    description = "R package timereg";
    homepage = "https://cran.r-project.org/package=timereg";
  };
}
