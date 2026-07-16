{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "optimParallel";
  version = "1.0-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/optimParallel_1.0-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/optimParallel/optimParallel_1.0-2.tar.gz"
    ];
    sha256 = "178ayfaivkbxkghxbg97lx4gl27kxkmgaaw9y8q5206r4cncd6qg";
  };

  meta = {
    description = "R package optimParallel";
    homepage = "https://cran.r-project.org/package=optimParallel";
  };
}
