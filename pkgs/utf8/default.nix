{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "utf8";
  version = "1.2.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/utf8_1.2.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/utf8/utf8_1.2.6.tar.gz"
    ];
    sha256 = "1sbcd3kyx8y9dfbydlmsxrj7fkpb5w7w5a7knxq9wcli4avzi2a5";
  };

  meta = {
    description = "R package utf8";
    homepage = "https://cran.r-project.org/package=utf8";
  };
}
