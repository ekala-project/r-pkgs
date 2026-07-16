{
  buildRPackage,
  fetchurl,
  R6,
  findpython,
  jsonlite,
}:

buildRPackage {
  pname = "argparse";
  version = "2.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/argparse_2.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/argparse/argparse_2.3.1.tar.gz"
    ];
    sha256 = "1clhklsj9mncz0nr6xxn9xrnbvz2vmysa7vp78wrd3vb357si18r";
  };

  propagatedBuildInputs = [
    R6
    findpython
    jsonlite
  ];

  meta = {
    description = "R package argparse";
    homepage = "https://cran.r-project.org/package=argparse";
  };
}
