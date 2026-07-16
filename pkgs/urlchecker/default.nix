{
  buildRPackage,
  fetchurl,
  cli,
  curl,
  xml2,
}:

buildRPackage {
  pname = "urlchecker";
  version = "1.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/urlchecker_1.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/urlchecker/urlchecker_1.0.1.tar.gz"
    ];
    sha256 = "06034lb94krbzawqg5xklwcksvyyzl3qy355f66baj5pw7dms5k2";
  };

  propagatedBuildInputs = [
    cli
    curl
    xml2
  ];

  meta = {
    description = "R package urlchecker";
    homepage = "https://cran.r-project.org/package=urlchecker";
  };
}
