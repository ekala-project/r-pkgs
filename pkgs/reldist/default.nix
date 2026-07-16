{
  buildRPackage,
  fetchurl,
  densEstBayes,
  mgcv,
}:

buildRPackage {
  pname = "reldist";
  version = "1.7-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/reldist_1.7-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/reldist/reldist_1.7-2.tar.gz"
    ];
    sha256 = "1j99j9a0igb9nwkp7fkqqkmvyz770xmbi1d25pbnaz7d2jy6q26r";
  };

  propagatedBuildInputs = [
    densEstBayes
    mgcv
  ];

  meta = {
    description = "R package reldist";
    homepage = "https://cran.r-project.org/package=reldist";
  };
}
