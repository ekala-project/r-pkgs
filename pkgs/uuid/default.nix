{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "uuid";
  version = "1.2-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/uuid_1.2-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/uuid/uuid_1.2-2.tar.gz"
    ];
    sha256 = "0pq2x6xiw5dq24kni4bp2z9pxgcxrwn0jcvbbq4iayqd323kpdxi";
  };

  meta = {
    description = "R package uuid";
    homepage = "https://cran.r-project.org/package=uuid";
  };
}
