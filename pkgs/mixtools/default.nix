{
  buildRPackage,
  fetchurl,
  MASS,
  kernlab,
  plotly,
  scales,
  segmented,
  survival,
}:

buildRPackage {
  pname = "mixtools";
  version = "2.0.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mixtools_2.0.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mixtools/mixtools_2.0.0.1.tar.gz"
    ];
    sha256 = "1hcpijmddibhfxhq6d8lgi7m1x6ylf97y9ns0l8li3a1bvc438ws";
  };

  propagatedBuildInputs = [
    MASS
    kernlab
    plotly
    scales
    segmented
    survival
  ];

  meta = {
    description = "R package mixtools";
    homepage = "https://cran.r-project.org/package=mixtools";
  };
}
