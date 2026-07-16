{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "tensorA";
  version = "0.36.2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tensorA_0.36.2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tensorA/tensorA_0.36.2.1.tar.gz"
    ];
    sha256 = "1dvxc4d5c8k3mqkx6bjgfmnb98rrdd1rsazyva76mzvxzrhq4n06";
  };

  meta = {
    description = "R package tensorA";
    homepage = "https://cran.r-project.org/package=tensorA";
  };
}
