{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "filematrix";
  version = "1.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/filematrix_1.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/filematrix/filematrix_1.3.tar.gz"
    ];
    sha256 = "1v3aj1ng742msb0sfdnjsbqb508mqjf8jlq2v33vxldhradw5w0b";
  };

  meta = {
    description = "R package filematrix";
    homepage = "https://cran.r-project.org/package=filematrix";
  };
}
