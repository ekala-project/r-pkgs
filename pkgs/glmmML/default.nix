{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "glmmML";
  version = "1.1.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/glmmML_1.1.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/glmmML/glmmML_1.1.7.tar.gz"
    ];
    sha256 = "07w6b1i9fkv8dxcmvky81f87ysbrrry3d4jczwkg953g9lankr5j";
  };

  meta = {
    description = "R package glmmML";
    homepage = "https://cran.r-project.org/package=glmmML";
  };
}
