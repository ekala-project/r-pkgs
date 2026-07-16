{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "gitcreds";
  version = "0.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gitcreds_0.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gitcreds/gitcreds_0.1.2.tar.gz"
    ];
    sha256 = "0pf70g4a2kxjcid5rc4ppmgcl3kpjhkszdgz4fqn4l33lp6apij1";
  };

  meta = {
    description = "R package gitcreds";
    homepage = "https://cran.r-project.org/package=gitcreds";
  };
}
