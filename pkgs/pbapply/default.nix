{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "pbapply";
  version = "1.7-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pbapply_1.7-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pbapply/pbapply_1.7-4.tar.gz"
    ];
    sha256 = "0b9hy4zva0n8s8lfk5ddfq10y3pc69dygcnkfi9p64xzlq872p3a";
  };

  meta = {
    description = "R package pbapply";
    homepage = "https://cran.r-project.org/package=pbapply";
  };
}
