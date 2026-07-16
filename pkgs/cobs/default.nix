{
  buildRPackage,
  fetchurl,
  SparseM,
  quantreg,
}:

buildRPackage {
  pname = "cobs";
  version = "1.3-9-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/cobs_1.3-9-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/cobs/cobs_1.3-9-1.tar.gz"
    ];
    sha256 = "1sik2m1qzv24h9difhsfqsjb03krxhq7nd9pcn7fzxd3xn9m0qgk";
  };

  propagatedBuildInputs = [
    SparseM
    quantreg
  ];

  meta = {
    description = "R package cobs";
    homepage = "https://cran.r-project.org/package=cobs";
  };
}
