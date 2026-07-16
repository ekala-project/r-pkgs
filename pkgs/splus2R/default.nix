{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "splus2R";
  version = "1.3-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/splus2R_1.3-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/splus2R/splus2R_1.3-5.tar.gz"
    ];
    sha256 = "097bpzazw5ryb6izbmz2sdlghn3qvh7c7wsnn0j08j65f9bfmc77";
  };

  meta = {
    description = "R package splus2R";
    homepage = "https://cran.r-project.org/package=splus2R";
  };
}
