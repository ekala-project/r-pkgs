{
  buildRPackage,
  fetchurl,
  plyr,
}:

buildRPackage {
  pname = "reshape";
  version = "0.8.10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/reshape_0.8.10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/reshape/reshape_0.8.10.tar.gz"
    ];
    sha256 = "0r3bzhl7i4v11lh36qflzsacanv0z4zn332k9ps7j0jjas4nxvrm";
  };

  propagatedBuildInputs = [
    plyr
  ];

  meta = {
    description = "R package reshape";
    homepage = "https://cran.r-project.org/package=reshape";
  };
}
