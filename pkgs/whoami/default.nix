{
  buildRPackage,
  fetchurl,
  httr,
  jsonlite,
}:

buildRPackage {
  pname = "whoami";
  version = "1.3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/whoami_1.3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/whoami/whoami_1.3.0.tar.gz"
    ];
    sha256 = "19fwl7z55s4kl2xzwqwh8iwg13kdrv222vyl3kibxgwrjcjwj2y2";
  };

  propagatedBuildInputs = [
    httr
    jsonlite
  ];

  meta = {
    description = "R package whoami";
    homepage = "https://cran.r-project.org/package=whoami";
  };
}
