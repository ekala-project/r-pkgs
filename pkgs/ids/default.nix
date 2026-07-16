{
  buildRPackage,
  fetchurl,
  openssl,
  uuid,
}:

buildRPackage {
  pname = "ids";
  version = "1.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ids_1.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ids/ids_1.0.1.tar.gz"
    ];
    sha256 = "1s6ga94gds5ydr9f8qbjfgfpg2dvbnkcrlybqlb33hk3c0c2l8dn";
  };

  propagatedBuildInputs = [
    openssl
    uuid
  ];

  meta = {
    description = "R package ids";
    homepage = "https://cran.r-project.org/package=ids";
  };
}
