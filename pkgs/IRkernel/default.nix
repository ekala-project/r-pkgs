{
  buildRPackage,
  fetchurl,
  IRdisplay,
  crayon,
  digest,
  evaluate,
  jsonlite,
  pbdZMQ,
  repr,
  uuid,
}:

buildRPackage {
  pname = "IRkernel";
  version = "1.3.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/IRkernel_1.3.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/IRkernel/IRkernel_1.3.2.tar.gz"
    ];
    sha256 = "19i4wj5cb62n6j83nxgv500dcdzrf6rzwdy5v6fh7r93vjyxiip1";
  };

  propagatedBuildInputs = [
    IRdisplay
    crayon
    digest
    evaluate
    jsonlite
    pbdZMQ
    repr
    uuid
  ];

  meta = {
    description = "R package IRkernel";
    homepage = "https://cran.r-project.org/package=IRkernel";
  };
}
