{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "optparse";
  version = "1.8.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/optparse_1.8.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/optparse/optparse_1.8.2.tar.gz"
    ];
    sha256 = "1zwq5mcs2irbjkkrmmh8ga5i0kwy6ffpfja4w0ajigqrrqp8c798";
  };

  meta = {
    description = "R package optparse";
    homepage = "https://cran.r-project.org/package=optparse";
  };
}
