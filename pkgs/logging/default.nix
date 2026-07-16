{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "logging";
  version = "0.10-111";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/logging_0.10-111.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/logging/logging_0.10-111.tar.gz"
    ];
    sha256 = "0nag239xsv44s52wsb3rz1478j8lpnxg5l3licvh55scy5kd76q1";
  };

  meta = {
    description = "R package logging";
    homepage = "https://cran.r-project.org/package=logging";
  };
}
