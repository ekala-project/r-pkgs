{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "slam";
  version = "0.1-55";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/slam_0.1-55.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/slam/slam_0.1-55.tar.gz"
    ];
    sha256 = "00qwx6yrsqxa8kk2dn8i024a2cq1hcg9801k0rari9rb006lbf0g";
  };

  meta = {
    description = "R package slam";
    homepage = "https://cran.r-project.org/package=slam";
  };
}
