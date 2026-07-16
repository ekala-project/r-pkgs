{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "ADGofTest";
  version = "0.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ADGofTest_0.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ADGofTest/ADGofTest_0.3.tar.gz"
    ];
    sha256 = "0ik817qzqp6kfbckjp1z7srlma0w6z2zcwykh0jdiv7nahwk3ncw";
  };

  meta = {
    description = "R package ADGofTest";
    homepage = "https://cran.r-project.org/package=ADGofTest";
  };
}
