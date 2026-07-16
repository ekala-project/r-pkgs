{
  buildRPackage,
  fetchurl,
  AsioHeaders,
  R6,
  cpp11,
  later,
}:

buildRPackage {
  pname = "websocket";
  version = "1.4.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/websocket_1.4.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/websocket/websocket_1.4.4.tar.gz"
    ];
    sha256 = "0bhlyh8qxx0x288zq8q194jr334zbwaq7vsavbgcj7j63qkh1kcz";
  };

  propagatedBuildInputs = [
    AsioHeaders
    R6
    cpp11
    later
  ];

  meta = {
    description = "R package websocket";
    homepage = "https://cran.r-project.org/package=websocket";
  };
}
