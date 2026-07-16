{
  buildRPackage,
  fetchurl,
  zoo,
}:

buildRPackage {
  pname = "changepoint";
  version = "2.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/changepoint_2.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/changepoint/changepoint_2.3.tar.gz"
    ];
    sha256 = "0bb8pcfwb8vjmg7n7giad1vi1s6ix486lcsb28zvxih7v04v1a0r";
  };

  propagatedBuildInputs = [
    zoo
  ];

  meta = {
    description = "R package changepoint";
    homepage = "https://cran.r-project.org/package=changepoint";
  };
}
