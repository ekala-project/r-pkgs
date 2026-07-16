{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "mime";
  version = "0.13";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mime_0.13.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mime/mime_0.13.tar.gz"
    ];
    sha256 = "1szkqzily5sr1qlnrlrprid2gy5wkzb7dlxs2bzqwf63yd686cki";
  };

  meta = {
    description = "R package mime";
    homepage = "https://cran.r-project.org/package=mime";
  };
}
