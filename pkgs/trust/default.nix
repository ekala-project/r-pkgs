{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "trust";
  version = "0.1-9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/trust_0.1-9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/trust/trust_0.1-9.tar.gz"
    ];
    sha256 = "1pd135ljibkrqdbzpryn1zgsywi2hgl29d3jm5hr9mxbss817m38";
  };

  meta = {
    description = "R package trust";
    homepage = "https://cran.r-project.org/package=trust";
  };
}
