{
  buildRPackage,
  fetchurl,
  cli,
}:

buildRPackage {
  pname = "sessioninfo";
  version = "1.2.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sessioninfo_1.2.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sessioninfo/sessioninfo_1.2.3.tar.gz"
    ];
    sha256 = "0l66w40lfhb8n5n5201d4fdp4kmlbahwbsrcjyflk6n4lsl90ax0";
  };

  propagatedBuildInputs = [
    cli
  ];

  meta = {
    description = "R package sessioninfo";
    homepage = "https://cran.r-project.org/package=sessioninfo";
  };
}
