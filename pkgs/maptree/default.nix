{
  buildRPackage,
  fetchurl,
  cluster,
  rpart,
}:

buildRPackage {
  pname = "maptree";
  version = "1.4-9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/maptree_1.4-9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/maptree/maptree_1.4-9.tar.gz"
    ];
    sha256 = "1mm6jd7mswhvl8vaapbqwypz8k8xi42s2j239xi8jy0kda61ip6x";
  };

  propagatedBuildInputs = [
    cluster
    rpart
  ];

  meta = {
    description = "R package maptree";
    homepage = "https://cran.r-project.org/package=maptree";
  };
}
