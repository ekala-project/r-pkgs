{
  buildRPackage,
  fetchurl,
  zoo,
}:

buildRPackage {
  pname = "lmtest";
  version = "0.9-40";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lmtest_0.9-40.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lmtest/lmtest_0.9-40.tar.gz"
    ];
    sha256 = "15yr2kx08wy085bnziqmj1p6hf9mg3qp2a8465jk2df6di6hsh34";
  };

  propagatedBuildInputs = [
    zoo
  ];

  meta = {
    description = "R package lmtest";
    homepage = "https://cran.r-project.org/package=lmtest";
  };
}
