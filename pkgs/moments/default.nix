{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "moments";
  version = "0.14.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/moments_0.14.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/moments/moments_0.14.1.tar.gz"
    ];
    sha256 = "0r6qf3i1rzh2822bx1p0h8mh91gsbgg6asl2rzh2l4ys094bilif";
  };

  meta = {
    description = "R package moments";
    homepage = "https://cran.r-project.org/package=moments";
  };
}
