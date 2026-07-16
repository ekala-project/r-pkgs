{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "RhpcBLASctl";
  version = "0.23-42";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RhpcBLASctl_0.23-42.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RhpcBLASctl/RhpcBLASctl_0.23-42.tar.gz"
    ];
    sha256 = "05b6jhmxdr1rdpbvf5gwi9dqb57m8z2860qzkw5hcr72d5drv22w";
  };

  meta = {
    description = "R package RhpcBLASctl";
    homepage = "https://cran.r-project.org/package=RhpcBLASctl";
  };
}
