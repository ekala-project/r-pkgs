{
  buildRPackage,
  fetchurl,
  lattice,
  modeltools,
  nnet,
}:

buildRPackage {
  pname = "flexmix";
  version = "2.3-20";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/flexmix_2.3-20.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/flexmix/flexmix_2.3-20.tar.gz"
    ];
    sha256 = "1s160zi8bsdwk2vq0f0a3cbki1j42zk14dp2abxbpfjzhxyl7621";
  };

  propagatedBuildInputs = [
    lattice
    modeltools
    nnet
  ];

  meta = {
    description = "R package flexmix";
    homepage = "https://cran.r-project.org/package=flexmix";
  };
}
