{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "misc3d";
  version = "0.9-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/misc3d_0.9-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/misc3d/misc3d_0.9-2.tar.gz"
    ];
    sha256 = "16cv493xa4vc7akivqn66kx882k1z9n20r3nc9529y6y901ipggs";
  };

  meta = {
    description = "R package misc3d";
    homepage = "https://cran.r-project.org/package=misc3d";
  };
}
