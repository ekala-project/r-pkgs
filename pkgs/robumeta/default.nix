{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "robumeta";
  version = "2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/robumeta_2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/robumeta/robumeta_2.1.tar.gz"
    ];
    sha256 = "1lybq36p1n1z9p0iqiyzwmv5f07q1wlkqfgrnx9kjf6pwlp9mkyk";
  };

  meta = {
    description = "R package robumeta";
    homepage = "https://cran.r-project.org/package=robumeta";
  };
}
