{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "latex2exp";
  version = "0.9.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/latex2exp_0.9.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/latex2exp/latex2exp_0.9.8.tar.gz"
    ];
    sha256 = "198hcnj2hsqb52gvp8hc4f1cakcmwhs0jm97qg81b5cqcgr43mld";
  };

  meta = {
    description = "R package latex2exp";
    homepage = "https://cran.r-project.org/package=latex2exp";
  };
}
