{
  buildRPackage,
  fetchurl,
  cli,
  htmltools,
  rlang,
}:

buildRPackage {
  pname = "bsicons";
  version = "0.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bsicons_0.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bsicons/bsicons_0.1.2.tar.gz"
    ];
    sha256 = "1ifxb6qvm5m824n924pwa3f2ck33mzzbjq77jzdl36ikx4z0x47a";
  };

  propagatedBuildInputs = [
    cli
    htmltools
    rlang
  ];

  meta = {
    description = "R package bsicons";
    homepage = "https://cran.r-project.org/package=bsicons";
  };
}
