{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "GlobalOptions";
  version = "0.1.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/GlobalOptions_0.1.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/GlobalOptions/GlobalOptions_0.1.4.tar.gz"
    ];
    sha256 = "0lvpnkq7xikwynjwiy5dkqjxaqjwzj9kfv46mkg6a1cxvfpz9mdy";
  };

  meta = {
    description = "R package GlobalOptions";
    homepage = "https://cran.r-project.org/package=GlobalOptions";
  };
}
