{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "pan";
  version = "1.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pan_1.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pan/pan_1.9.tar.gz"
    ];
    sha256 = "0liwcym035174h6c4b9ddmqxa3vkpkk3alyr9psk8yhv7i61hzp3";
  };

  meta = {
    description = "R package pan";
    homepage = "https://cran.r-project.org/package=pan";
  };
}
