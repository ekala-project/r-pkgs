{
  buildRPackage,
  fetchurl,
  askpass,
}:

buildRPackage {
  pname = "openssl";
  version = "2.4.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/openssl_2.4.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/openssl/openssl_2.4.1.tar.gz"
    ];
    sha256 = "0g6njapf1j29w800hnd08j4kmidjczwvchk2ywxw2n4j9xbbm9zz";
  };

  propagatedBuildInputs = [
    askpass
  ];

  meta = {
    description = "R package openssl";
    homepage = "https://cran.r-project.org/package=openssl";
  };
}
