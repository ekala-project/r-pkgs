{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "assertthat";
  version = "0.2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/assertthat_0.2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/assertthat/assertthat_0.2.1.tar.gz"
    ];
    sha256 = "17wy5bdfzg73sg2clisg1k3zyn1adkj59x56m5nwia2k8z67zkw5";
  };

  meta = {
    description = "R package assertthat";
    homepage = "https://cran.r-project.org/package=assertthat";
  };
}
