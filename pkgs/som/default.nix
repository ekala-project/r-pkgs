{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "som";
  version = "0.3-5.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/som_0.3-5.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/som/som_0.3-5.2.tar.gz"
    ];
    sha256 = "0ibhcadjfgi93p5jvs8hni7a92k3x1k74m93w6h2xl6c2q2vpavn";
  };

  meta = {
    description = "R package som";
    homepage = "https://cran.r-project.org/package=som";
  };
}
