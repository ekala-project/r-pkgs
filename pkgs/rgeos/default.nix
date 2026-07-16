{
  buildRPackage,
  fetchurl,
  sp,
}:

buildRPackage {
  pname = "rgeos";
  version = "0.6-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rgeos_0.6-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rgeos/rgeos_0.6-4.tar.gz"
    ];
    sha256 = "04fyrqdpb4cz9kjqh1cxbpqh1ana7l8zh7wdzxassgzxjvgc80wx";
  };

  propagatedBuildInputs = [
    sp
  ];

  meta = {
    description = "R package rgeos";
    homepage = "https://cran.r-project.org/package=rgeos";
  };
}
