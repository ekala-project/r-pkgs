{
  buildRPackage,
  fetchurl,
  sandwich,
}:

buildRPackage {
  pname = "gmm";
  version = "1.9-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gmm_1.9-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gmm/gmm_1.9-1.tar.gz"
    ];
    sha256 = "07rwp1d9z2pnsac6dkcxgdrabnr5lhqj376x30bl0gs0156ng44j";
  };

  propagatedBuildInputs = [
    sandwich
  ];

  meta = {
    description = "R package gmm";
    homepage = "https://cran.r-project.org/package=gmm";
  };
}
