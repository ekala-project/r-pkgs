{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "flashClust";
  version = "1.1-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/flashClust_1.1-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/flashClust/flashClust_1.1-4.tar.gz"
    ];
    sha256 = "1sdl7p1h9rlx92jqnvx5ryflg9ac7lr1ax7bxmxla18sj8v459sf";
  };

  meta = {
    description = "R package flashClust";
    homepage = "https://cran.r-project.org/package=flashClust";
  };
}
