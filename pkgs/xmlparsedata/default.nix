{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "xmlparsedata";
  version = "1.0.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/xmlparsedata_1.0.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/xmlparsedata/xmlparsedata_1.0.5.tar.gz"
    ];
    sha256 = "1c6bnz3ng1qw7sfip8wq3a4dn36a4d6rbja0sadn0a4pbsmk8q3n";
  };

  meta = {
    description = "R package xmlparsedata";
    homepage = "https://cran.r-project.org/package=xmlparsedata";
  };
}
