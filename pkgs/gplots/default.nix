{
  buildRPackage,
  fetchurl,
  KernSmooth,
  caTools,
  gtools,
}:

buildRPackage {
  pname = "gplots";
  version = "3.3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gplots_3.3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gplots/gplots_3.3.0.tar.gz"
    ];
    sha256 = "00p3dfk0czcp8dvcfdsx3a4wbwlnxqhrn6x8byj6mfzxv0w0nk7q";
  };

  propagatedBuildInputs = [
    KernSmooth
    caTools
    gtools
  ];

  meta = {
    description = "R package gplots";
    homepage = "https://cran.r-project.org/package=gplots";
  };
}
