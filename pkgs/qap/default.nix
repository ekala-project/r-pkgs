{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "qap";
  version = "0.1-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/qap_0.1-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/qap/qap_0.1-2.tar.gz"
    ];
    sha256 = "19adb1bw46pcnmmhqz2jklr0vmma3llxajqp0j9mqfksmsisv927";
  };

  meta = {
    description = "R package qap";
    homepage = "https://cran.r-project.org/package=qap";
  };
}
