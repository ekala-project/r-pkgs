{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "base64enc";
  version = "0.1-6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/base64enc_0.1-6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/base64enc/base64enc_0.1-6.tar.gz"
    ];
    sha256 = "05h8vfnyf2j7yan7c1mj7rly5n1x1jc6xyh8j2ca57s0ywi9sziw";
  };

  meta = {
    description = "R package base64enc";
    homepage = "https://cran.r-project.org/package=base64enc";
  };
}
