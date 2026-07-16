{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "NbClust";
  version = "3.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/NbClust_3.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/NbClust/NbClust_3.0.1.tar.gz"
    ];
    sha256 = "0k5hr4zgx4gp1n62xchgz2zvyl35ba2cnczhhvj8rfbg2n4hx6qs";
  };

  meta = {
    description = "R package NbClust";
    homepage = "https://cran.r-project.org/package=NbClust";
  };
}
