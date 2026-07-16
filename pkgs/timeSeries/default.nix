{
  buildRPackage,
  fetchurl,
  timeDate,
}:

buildRPackage {
  pname = "timeSeries";
  version = "4052.112";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/timeSeries_4052.112.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/timeSeries/timeSeries_4052.112.tar.gz"
    ];
    sha256 = "14v9ihvg5vclrmxiqgzwjh3c8bj440qbjyz4f5582d7skik0mrf4";
  };

  propagatedBuildInputs = [
    timeDate
  ];

  meta = {
    description = "R package timeSeries";
    homepage = "https://cran.r-project.org/package=timeSeries";
  };
}
