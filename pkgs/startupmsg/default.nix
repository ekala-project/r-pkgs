{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "startupmsg";
  version = "1.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/startupmsg_1.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/startupmsg/startupmsg_1.0.0.tar.gz"
    ];
    sha256 = "06ywgrfwl61b0j7g2h1s1sqcdadswx65i6r17z1lckzryh8j1mkv";
  };

  meta = {
    description = "R package startupmsg";
    homepage = "https://cran.r-project.org/package=startupmsg";
  };
}
