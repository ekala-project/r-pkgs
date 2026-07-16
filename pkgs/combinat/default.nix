{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "combinat";
  version = "0.0-8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/combinat_0.0-8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/combinat/combinat_0.0-8.tar.gz"
    ];
    sha256 = "1h9hr88gigihc4na7lb5i7rn4az1xa7sb34zvnznaj6pdrmwy4qm";
  };

  meta = {
    description = "R package combinat";
    homepage = "https://cran.r-project.org/package=combinat";
  };
}
