{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "cluster";
  version = "2.1.8.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/cluster_2.1.8.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/cluster/cluster_2.1.8.2.tar.gz"
    ];
    sha256 = "118mnkykvr6irdi1bnasv0dk4gvjw6dyx81sncxqipmaifjrij2c";
  };

  meta = {
    description = "R package cluster";
    homepage = "https://cran.r-project.org/package=cluster";
  };
}
