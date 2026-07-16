{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "tinytest";
  version = "1.4.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tinytest_1.4.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tinytest/tinytest_1.4.3.tar.gz"
    ];
    sha256 = "0xc3qcrwqnr5jyw9f59g0v2jsq4byzhpf4bw29qclwhfd6ca7hzc";
  };

  meta = {
    description = "R package tinytest";
    homepage = "https://cran.r-project.org/package=tinytest";
  };
}
