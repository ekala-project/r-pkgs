{
  buildRPackage,
  fetchurl,
  jsonlite,
  openssl,
}:

buildRPackage {
  pname = "jose";
  version = "2.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/jose_2.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/jose/jose_2.0.0.tar.gz"
    ];
    sha256 = "1qnmq1v1j0gg39xl5fhl21vm4ny46wlngm1fqlb0svbkv8yf3m14";
  };

  propagatedBuildInputs = [
    jsonlite
    openssl
  ];

  meta = {
    description = "R package jose";
    homepage = "https://cran.r-project.org/package=jose";
  };
}
