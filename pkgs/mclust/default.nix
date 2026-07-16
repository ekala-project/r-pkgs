{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "mclust";
  version = "6.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mclust_6.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mclust/mclust_6.1.2.tar.gz"
    ];
    sha256 = "1k2942qpj7yhqddk049x2ixrlf0cpgrsmzy0qr5lmbymlpmb87av";
  };

  meta = {
    description = "R package mclust";
    homepage = "https://cran.r-project.org/package=mclust";
  };
}
