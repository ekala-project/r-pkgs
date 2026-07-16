{
  buildRPackage,
  fetchurl,
  XML,
  data_table,
  jsonlite,
  yaml,
}:

buildRPackage {
  pname = "rlist";
  version = "0.4.6.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rlist_0.4.6.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rlist/rlist_0.4.6.2.tar.gz"
    ];
    sha256 = "15q99rhbbjq8zd976yjmfnny45dd5fg2p2dv1sljg2kwi66nbppb";
  };

  propagatedBuildInputs = [
    XML
    data_table
    jsonlite
    yaml
  ];

  meta = {
    description = "R package rlist";
    homepage = "https://cran.r-project.org/package=rlist";
  };
}
