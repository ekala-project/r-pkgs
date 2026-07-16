{
  buildRPackage,
  fetchurl,
  generics,
  timechange,
}:

buildRPackage {
  pname = "lubridate";
  version = "1.9.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lubridate_1.9.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lubridate/lubridate_1.9.5.tar.gz"
    ];
    sha256 = "1a40h89q09kb970ypynq2larwsrqih2jqmwwkr7msa1lb87d3i8b";
  };

  propagatedBuildInputs = [
    generics
    timechange
  ];

  meta = {
    description = "R package lubridate";
    homepage = "https://cran.r-project.org/package=lubridate";
  };
}
