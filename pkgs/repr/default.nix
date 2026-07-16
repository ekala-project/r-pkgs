{
  buildRPackage,
  fetchurl,
  base64enc,
  htmltools,
  jsonlite,
  pillar,
}:

buildRPackage {
  pname = "repr";
  version = "1.1.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/repr_1.1.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/repr/repr_1.1.7.tar.gz"
    ];
    sha256 = "06q2xmg27w1hhapcf320zz92f5arwrf2sf0y1mp0j4a29mmnkgbk";
  };

  propagatedBuildInputs = [
    base64enc
    htmltools
    jsonlite
    pillar
  ];

  meta = {
    description = "R package repr";
    homepage = "https://cran.r-project.org/package=repr";
  };
}
