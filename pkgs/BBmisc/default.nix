{
  buildRPackage,
  fetchurl,
  checkmate,
  data_table,
}:

buildRPackage {
  pname = "BBmisc";
  version = "1.13.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/BBmisc_1.13.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/BBmisc/BBmisc_1.13.1.tar.gz"
    ];
    sha256 = "0ql1s0nhl0k50wivjl2s37hlm4wpw89v5rdqaxb7xd15z4jrnncg";
  };

  propagatedBuildInputs = [
    checkmate
    data_table
  ];

  meta = {
    description = "R package BBmisc";
    homepage = "https://cran.r-project.org/package=BBmisc";
  };
}
