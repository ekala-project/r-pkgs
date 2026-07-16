{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "pls";
  version = "2.9-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pls_2.9-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pls/pls_2.9-0.tar.gz"
    ];
    sha256 = "07wfwzxdsr6dvhwkii8a5aac0z8q7hpasmpyvfkvv2difnkcp6gx";
  };

  meta = {
    description = "R package pls";
    homepage = "https://cran.r-project.org/package=pls";
  };
}
