{
  buildRPackage,
  fetchurl,
  filehash,
  png,
}:

buildRPackage {
  pname = "tikzDevice";
  version = "0.12.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tikzDevice_0.12.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tikzDevice/tikzDevice_0.12.6.tar.gz"
    ];
    sha256 = "1b04a3hmfx0r5iw6836cb9pvqspijb2dz17vc40n9jwsr9ij3nq4";
  };

  propagatedBuildInputs = [
    filehash
    png
  ];

  meta = {
    description = "R package tikzDevice";
    homepage = "https://cran.r-project.org/package=tikzDevice";
  };
}
