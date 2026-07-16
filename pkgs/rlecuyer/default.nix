{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rlecuyer";
  version = "0.3-8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rlecuyer_0.3-8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rlecuyer/rlecuyer_0.3-8.tar.gz"
    ];
    sha256 = "1jbm5h8zbsx1yw148piw9p0rj9a7cm0ywgidrzi5ylrp6dad7gk6";
  };

  meta = {
    description = "R package rlecuyer";
    homepage = "https://cran.r-project.org/package=rlecuyer";
  };
}
