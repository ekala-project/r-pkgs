{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "cli";
  version = "3.6.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/cli_3.6.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/cli/cli_3.6.6.tar.gz"
    ];
    sha256 = "1y8qdzip6q8lis4yz6a3x79iz8462rch17736nrrhmrgv1nqvddj";
  };

  meta = {
    description = "R package cli";
    homepage = "https://cran.r-project.org/package=cli";
  };
}
