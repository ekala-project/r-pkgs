{
  buildRPackage,
  fetchurl,
  digest,
}:

buildRPackage {
  pname = "downloader";
  version = "0.4.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/downloader_0.4.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/downloader/downloader_0.4.1.tar.gz"
    ];
    sha256 = "0xai0dp0hchsnrijx8dfxawzlw67xvrdm8jzwaxy604ngvv5ynbl";
  };

  propagatedBuildInputs = [
    digest
  ];

  meta = {
    description = "R package downloader";
    homepage = "https://cran.r-project.org/package=downloader";
  };
}
