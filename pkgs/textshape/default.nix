{
  buildRPackage,
  fetchurl,
  data_table,
  slam,
  stringi,
}:

buildRPackage {
  pname = "textshape";
  version = "1.7.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/textshape_1.7.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/textshape/textshape_1.7.5.tar.gz"
    ];
    sha256 = "1g193dg4rhw8a1iwkyqsswlj95h9irm9xziclwc1mhd3jm5wyify";
  };

  propagatedBuildInputs = [
    data_table
    slam
    stringi
  ];

  meta = {
    description = "R package textshape";
    homepage = "https://cran.r-project.org/package=textshape";
  };
}
