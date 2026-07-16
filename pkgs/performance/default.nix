{
  buildRPackage,
  fetchurl,
  bayestestR,
  datawizard,
  insight,
}:

buildRPackage {
  pname = "performance";
  version = "0.17.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/performance_0.17.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/performance/performance_0.17.0.tar.gz"
    ];
    sha256 = "05430ac53qf03wilj5gh0hsvqbl9pqdl7dszk1kwrsphavb8k5v6";
  };

  propagatedBuildInputs = [
    bayestestR
    datawizard
    insight
  ];

  meta = {
    description = "R package performance";
    homepage = "https://cran.r-project.org/package=performance";
  };
}
