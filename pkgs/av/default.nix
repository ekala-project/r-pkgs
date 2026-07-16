{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "av";
  version = "0.9.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/av_0.9.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/av/av_0.9.6.tar.gz"
    ];
    sha256 = "0vl4g94xrbv7glzhssgi6mpm4bica80mydwzm2l53lnn9kg2dx25";
  };

  meta = {
    description = "R package av";
    homepage = "https://cran.r-project.org/package=av";
  };
}
