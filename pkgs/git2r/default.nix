{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "git2r";
  version = "0.36.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/git2r_0.36.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/git2r/git2r_0.36.2.tar.gz"
    ];
    sha256 = "1b6ccsvaab63vyb04jszs352fk03hazg6cav4wv8h1f4al2z1m4c";
  };

  meta = {
    description = "R package git2r";
    homepage = "https://cran.r-project.org/package=git2r";
  };
}
