{
  buildRPackage,
  fetchurl,
  boot,
}:

buildRPackage {
  pname = "Kendall";
  version = "2.2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Kendall_2.2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Kendall/Kendall_2.2.2.tar.gz"
    ];
    sha256 = "1sdnjxw3nqv2ic669p4w741ppy9k30jb2hzkd5yfsma8brm6f7kv";
  };

  propagatedBuildInputs = [
    boot
  ];

  meta = {
    description = "R package Kendall";
    homepage = "https://cran.r-project.org/package=Kendall";
  };
}
