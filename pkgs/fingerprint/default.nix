{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "fingerprint";
  version = "3.5.10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fingerprint_3.5.10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fingerprint/fingerprint_3.5.10.tar.gz"
    ];
    sha256 = "0549yg619k51askn4ds576q0s14mwwpz66rmfvdfh1hq3d4xy3sy";
  };

  meta = {
    description = "R package fingerprint";
    homepage = "https://cran.r-project.org/package=fingerprint";
  };
}
