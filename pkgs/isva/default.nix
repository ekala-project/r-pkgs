{
  buildRPackage,
  fetchurl,
  JADE,
  fastICA,
  qvalue,
}:

buildRPackage {
  pname = "isva";
  version = "1.10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/isva_1.10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/isva/isva_1.10.tar.gz"
    ];
    sha256 = "1im1bwbf6l88m4bwwwr0z2x8bvw927s3fqbwc06s5240wc8syjpl";
  };

  propagatedBuildInputs = [
    JADE
    fastICA
    qvalue
  ];

  meta = {
    description = "R package isva";
    homepage = "https://cran.r-project.org/package=isva";
  };
}
