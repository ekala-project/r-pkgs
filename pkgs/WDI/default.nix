{
  buildRPackage,
  fetchurl,
  jsonlite,
}:

buildRPackage {
  pname = "WDI";
  version = "2.7.10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/WDI_2.7.10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/WDI/WDI_2.7.10.tar.gz"
    ];
    sha256 = "1a7kcxx8dmfvzv89n7z6990fiq0agy4dhql850mcmz9shjjz9d60";
  };

  propagatedBuildInputs = [
    jsonlite
  ];

  meta = {
    description = "R package WDI";
    homepage = "https://cran.r-project.org/package=WDI";
  };
}
