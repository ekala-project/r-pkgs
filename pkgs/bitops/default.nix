{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "bitops";
  version = "1.0-9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bitops_1.0-9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bitops/bitops_1.0-9.tar.gz"
    ];
    sha256 = "020dfk0pmiz739rnpb9yi8hnsih3z3891dljvs7kpfvjgfvsbwyg";
  };

  meta = {
    description = "R package bitops";
    homepage = "https://cran.r-project.org/package=bitops";
  };
}
