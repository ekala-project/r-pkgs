{
  buildRPackage,
  fetchurl,
  fontBitstreamVera,
  fontLiberation,
}:

buildRPackage {
  pname = "fontquiver";
  version = "0.2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fontquiver_0.2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fontquiver/fontquiver_0.2.1.tar.gz"
    ];
    sha256 = "0qv3i9hch7cygl9983s3w68wfh5qvym2jkm52pp06p6mq8a1i1wm";
  };

  propagatedBuildInputs = [
    fontBitstreamVera
    fontLiberation
  ];

  meta = {
    description = "R package fontquiver";
    homepage = "https://cran.r-project.org/package=fontquiver";
  };
}
