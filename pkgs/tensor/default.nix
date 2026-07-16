{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "tensor";
  version = "1.5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tensor_1.5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tensor/tensor_1.5.1.tar.gz"
    ];
    sha256 = "0n4b2q1my6q2b73c7hl9wp9wwnimq8950kv9hcgyrbda9q10gnvf";
  };

  meta = {
    description = "R package tensor";
    homepage = "https://cran.r-project.org/package=tensor";
  };
}
