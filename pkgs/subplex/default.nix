{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "subplex";
  version = "1.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/subplex_1.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/subplex/subplex_1.9.tar.gz"
    ];
    sha256 = "1dv9bpwm7ml662yrc2jnrjf4f8n1g5rfiipq6z0fx9j6pa6fma87";
  };

  meta = {
    description = "R package subplex";
    homepage = "https://cran.r-project.org/package=subplex";
  };
}
