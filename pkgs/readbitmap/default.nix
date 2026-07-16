{
  buildRPackage,
  fetchurl,
  bmp,
  jpeg,
  png,
  tiff,
}:

buildRPackage {
  pname = "readbitmap";
  version = "0.1.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/readbitmap_0.1.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/readbitmap/readbitmap_0.1.5.tar.gz"
    ];
    sha256 = "14825906l326w59g6apy00j55jg3h5kx2r6s031f4gdkbrc7szbk";
  };

  propagatedBuildInputs = [
    bmp
    jpeg
    png
    tiff
  ];

  meta = {
    description = "R package readbitmap";
    homepage = "https://cran.r-project.org/package=readbitmap";
  };
}
