{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "remotes";
  version = "2.5.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/remotes_2.5.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/remotes/remotes_2.5.0.tar.gz"
    ];
    sha256 = "0345s9q0fyv0wrxkklcy97h7bi85jfb3vwkh80px926d4qa3yrjd";
  };

  meta = {
    description = "R package remotes";
    homepage = "https://cran.r-project.org/package=remotes";
  };
}
