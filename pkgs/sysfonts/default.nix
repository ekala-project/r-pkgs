{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "sysfonts";
  version = "0.8.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sysfonts_0.8.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sysfonts/sysfonts_0.8.9.tar.gz"
    ];
    sha256 = "124zcnw88xnlhx27qjm07mw59f98jiwspmm65v94k815lqs9qiaj";
  };

  meta = {
    description = "R package sysfonts";
    homepage = "https://cran.r-project.org/package=sysfonts";
  };
}
