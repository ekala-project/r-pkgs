{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "bigassertr";
  version = "0.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bigassertr_0.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bigassertr/bigassertr_0.2.0.tar.gz"
    ];
    sha256 = "037shjim8syqfc563i6fs0slkdrmfp3pjfy15kfxr5jdk8yvyka3";
  };

  meta = {
    description = "R package bigassertr";
    homepage = "https://cran.r-project.org/package=bigassertr";
  };
}
