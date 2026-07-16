{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "emoa";
  version = "0.5-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/emoa_0.5-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/emoa/emoa_0.5-3.tar.gz"
    ];
    sha256 = "1w287k5gjhgqcyq27xz0ybvhzkf1kydcnpcn30iziliw3xx71g2d";
  };

  meta = {
    description = "R package emoa";
    homepage = "https://cran.r-project.org/package=emoa";
  };
}
