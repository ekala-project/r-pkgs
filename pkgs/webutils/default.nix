{
  buildRPackage,
  fetchurl,
  curl,
  jsonlite,
}:

buildRPackage {
  pname = "webutils";
  version = "1.2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/webutils_1.2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/webutils/webutils_1.2.2.tar.gz"
    ];
    sha256 = "07k6d37pscnbsqxg4rpxr0zxrylpv9z1f3s8c6nwd3fhpwjs4d55";
  };

  propagatedBuildInputs = [
    curl
    jsonlite
  ];

  meta = {
    description = "R package webutils";
    homepage = "https://cran.r-project.org/package=webutils";
  };
}
