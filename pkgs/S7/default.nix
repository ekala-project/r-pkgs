{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "S7";
  version = "0.2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/S7_0.2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/S7/S7_0.2.2.tar.gz"
    ];
    sha256 = "1xrasjbwwxaswzk54yqyshiqjfmw6kh7kly4n5jl5dq5vrfj8cvg";
  };

  meta = {
    description = "R package S7";
    homepage = "https://cran.r-project.org/package=S7";
  };
}
