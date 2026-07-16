{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "nanoarrow";
  version = "0.8.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/nanoarrow_0.8.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/nanoarrow/nanoarrow_0.8.0.tar.gz"
    ];
    sha256 = "1rabnp5p155swhsqgg2h9qdw8q5sr2vg23iylgsiviqjbx5xpvqz";
  };

  meta = {
    description = "R package nanoarrow";
    homepage = "https://cran.r-project.org/package=nanoarrow";
  };
}
