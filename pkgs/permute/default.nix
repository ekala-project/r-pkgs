{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "permute";
  version = "0.9-10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/permute_0.9-10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/permute/permute_0.9-10.tar.gz"
    ];
    sha256 = "012i20dq3pjmmf4by85x9kpglw4xkfa0nr440fzazp7hs8h2n66w";
  };

  meta = {
    description = "R package permute";
    homepage = "https://cran.r-project.org/package=permute";
  };
}
