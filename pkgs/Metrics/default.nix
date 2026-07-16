{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "Metrics";
  version = "0.1.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Metrics_0.1.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Metrics/Metrics_0.1.4.tar.gz"
    ];
    sha256 = "0fh8qbjlwzagh272lgwr4bxcqcjb1qpz53mgs8rzlvncax6nk5bk";
  };

  meta = {
    description = "R package Metrics";
    homepage = "https://cran.r-project.org/package=Metrics";
  };
}
