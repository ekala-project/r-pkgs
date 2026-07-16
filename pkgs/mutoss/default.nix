{
  buildRPackage,
  fetchurl,
  multcomp,
  multtest,
  mvtnorm,
  plotrix,
}:

buildRPackage {
  pname = "mutoss";
  version = "0.1-14";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mutoss_0.1-14.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mutoss/mutoss_0.1-14.tar.gz"
    ];
    sha256 = "1gswlg6n2pz1z8gyap6syggvyv3bfzr5kmxcwimhbixm36xzfkhz";
  };

  propagatedBuildInputs = [
    multcomp
    multtest
    mvtnorm
    plotrix
  ];

  meta = {
    description = "R package mutoss";
    homepage = "https://cran.r-project.org/package=mutoss";
  };
}
