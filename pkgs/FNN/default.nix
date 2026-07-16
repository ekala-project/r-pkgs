{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "FNN";
  version = "1.1.4.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/FNN_1.1.4.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/FNN/FNN_1.1.4.1.tar.gz"
    ];
    sha256 = "0m5q1jkyxynjgzakzn48aqxr5cc92sgl7z9j1zlqmb1yzn3p9nbk";
  };

  meta = {
    description = "R package FNN";
    homepage = "https://cran.r-project.org/package=FNN";
  };
}
