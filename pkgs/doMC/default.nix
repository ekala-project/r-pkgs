{
  buildRPackage,
  fetchurl,
  foreach,
  iterators,
}:

buildRPackage {
  pname = "doMC";
  version = "1.3.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/doMC_1.3.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/doMC/doMC_1.3.8.tar.gz"
    ];
    sha256 = "18qrcvqwm4cclvk8spvyi281y8prwzivj52xmzk1l9a82j2ny65j";
  };

  propagatedBuildInputs = [
    foreach
    iterators
  ];

  meta = {
    description = "R package doMC";
    homepage = "https://cran.r-project.org/package=doMC";
  };
}
