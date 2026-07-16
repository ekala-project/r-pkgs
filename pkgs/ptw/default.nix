{
  buildRPackage,
  fetchurl,
  RcppDE,
}:

buildRPackage {
  pname = "ptw";
  version = "1.9-17";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ptw_1.9-17.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ptw/ptw_1.9-17.tar.gz"
    ];
    sha256 = "0n2mih54rwq2wnb1lb6mdnrp02l2mh0dpdrjwqppb6jy7ldz6prw";
  };

  propagatedBuildInputs = [
    RcppDE
  ];

  meta = {
    description = "R package ptw";
    homepage = "https://cran.r-project.org/package=ptw";
  };
}
