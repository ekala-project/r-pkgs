{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "oskeyring";
  version = "0.1.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/oskeyring_0.1.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/oskeyring/oskeyring_0.1.7.tar.gz"
    ];
    sha256 = "0yj6v95fvf81ngbbwqgvlwhcwp8a9ykxlkvk1qhbnx6gcf7vq9r3";
  };

  meta = {
    description = "R package oskeyring";
    homepage = "https://cran.r-project.org/package=oskeyring";
  };
}
