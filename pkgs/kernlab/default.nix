{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "kernlab";
  version = "0.9-33";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/kernlab_0.9-33.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/kernlab/kernlab_0.9-33.tar.gz"
    ];
    sha256 = "0q9hvnams1cjjrx7hny0sjszqqg837pgn642nsdwhqipdmypih3h";
  };

  meta = {
    description = "R package kernlab";
    homepage = "https://cran.r-project.org/package=kernlab";
  };
}
