{
  buildRPackage,
  fetchurl,
  htmltools,
  knitr,
}:

buildRPackage {
  pname = "tables";
  version = "0.9.33";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tables_0.9.33.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tables/tables_0.9.33.tar.gz"
    ];
    sha256 = "0vzja9g5w8afr68q0nx8szl7zx3f8z7dwzf6zhc0lzysrsm8g4kv";
  };

  propagatedBuildInputs = [
    htmltools
    knitr
  ];

  meta = {
    description = "R package tables";
    homepage = "https://cran.r-project.org/package=tables";
  };
}
