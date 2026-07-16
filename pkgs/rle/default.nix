{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rle";
  version = "0.10.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rle_0.10.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rle/rle_0.10.0.tar.gz"
    ];
    sha256 = "1arlb1lhwyk8744f1inlghd3rkmzfgmfdq7zs353v0rs1yl9j5qr";
  };

  meta = {
    description = "R package rle";
    homepage = "https://cran.r-project.org/package=rle";
  };
}
