{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "brotli";
  version = "1.3.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/brotli_1.3.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/brotli/brotli_1.3.2.tar.gz"
    ];
    sha256 = "14qb83jgkxkwgqkpw57kx5ikbxrb84m5gp715qys1nrwk8maska4";
  };

  meta = {
    description = "R package brotli";
    homepage = "https://cran.r-project.org/package=brotli";
  };
}
