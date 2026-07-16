{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "bigmemory_sri";
  version = "0.1.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bigmemory_sri_0.1.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bigmemory_sri/bigmemory_sri_0.1.8.tar.gz"
    ];
    sha256 = "0wbpk3naipl0ab3wnixnp2n874kazrapv1c31fi3cxm19b94x6h2";
  };

  meta = {
    description = "R package bigmemory_sri";
    homepage = "https://cran.r-project.org/package=bigmemory_sri";
  };
}
