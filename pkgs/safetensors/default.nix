{
  buildRPackage,
  fetchurl,
  R6,
  cli,
  jsonlite,
  rlang,
}:

buildRPackage {
  pname = "safetensors";
  version = "0.2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/safetensors_0.2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/safetensors/safetensors_0.2.1.tar.gz"
    ];
    sha256 = "1ybsnr4pvzyakpvd02adl5wpplr188fp6f04n8y6f7qv88xg1fhc";
  };

  propagatedBuildInputs = [
    R6
    cli
    jsonlite
    rlang
  ];

  meta = {
    description = "R package safetensors";
    homepage = "https://cran.r-project.org/package=safetensors";
  };
}
