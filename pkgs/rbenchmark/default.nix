{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rbenchmark";
  version = "1.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rbenchmark_1.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rbenchmark/rbenchmark_1.0.0.tar.gz"
    ];
    sha256 = "010fn3qwnk2k411cbqyvra1d12c3bhhl3spzm8kxffmirj4p2al9";
  };

  meta = {
    description = "R package rbenchmark";
    homepage = "https://cran.r-project.org/package=rbenchmark";
  };
}
