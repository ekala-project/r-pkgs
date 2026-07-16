{
  buildRPackage,
  fetchurl,
  R_methodsS3,
  R_oo,
  R_utils,
  digest,
}:

buildRPackage {
  pname = "R_cache";
  version = "0.17.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/R_cache_0.17.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/R_cache/R_cache_0.17.0.tar.gz"
    ];
    sha256 = "089dh928a42q2ymf1cvan3rxrh4whal4zk6z5khmplgd28r9arg2";
  };

  propagatedBuildInputs = [
    R_methodsS3
    R_oo
    R_utils
    digest
  ];

  meta = {
    description = "R package R_cache";
    homepage = "https://cran.r-project.org/package=R_cache";
  };
}
