{
  buildRPackage,
  fetchurl,
  deSolve,
  fds,
}:

buildRPackage {
  pname = "fda";
  version = "6.3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fda_6.3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fda/fda_6.3.0.tar.gz"
    ];
    sha256 = "0dv6ly1jb7b2yyrlqkhnsv3wabr1xfz33nnc1iinp637ha8n1zvk";
  };

  propagatedBuildInputs = [
    deSolve
    fds
  ];

  meta = {
    description = "R package fda";
    homepage = "https://cran.r-project.org/package=fda";
  };
}
