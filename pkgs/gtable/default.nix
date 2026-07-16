{
  buildRPackage,
  fetchurl,
  cli,
  glue,
  lifecycle,
  rlang,
}:

buildRPackage {
  pname = "gtable";
  version = "0.3.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gtable_0.3.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gtable/gtable_0.3.6.tar.gz"
    ];
    sha256 = "1vz0kpj1hh3iz27yaax4i3l9n018py455p4f5nfn92r727xaa1fk";
  };

  propagatedBuildInputs = [
    cli
    glue
    lifecycle
    rlang
  ];

  meta = {
    description = "R package gtable";
    homepage = "https://cran.r-project.org/package=gtable";
  };
}
