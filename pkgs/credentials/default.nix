{
  buildRPackage,
  fetchurl,
  askpass,
  curl,
  jsonlite,
  openssl,
  sys,
}:

buildRPackage {
  pname = "credentials";
  version = "2.0.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/credentials_2.0.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/credentials/credentials_2.0.3.tar.gz"
    ];
    sha256 = "0g017v3zc8fssjxpgdxfyvvif7ndwj61hfmgfkhvbz2c9f04600l";
  };

  propagatedBuildInputs = [
    askpass
    curl
    jsonlite
    openssl
    sys
  ];

  meta = {
    description = "R package credentials";
    homepage = "https://cran.r-project.org/package=credentials";
  };
}
