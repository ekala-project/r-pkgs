{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "testit";
  version = "1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/testit_1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/testit/testit_1.0.tar.gz"
    ];
    sha256 = "0lky2vk7d4v6sbj2mbmsg2zfzx189zfis5whbv45dz19pacxgl0w";
  };

  meta = {
    description = "R package testit";
    homepage = "https://cran.r-project.org/package=testit";
  };
}
