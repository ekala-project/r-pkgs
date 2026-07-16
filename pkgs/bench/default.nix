{
  buildRPackage,
  fetchurl,
  glue,
  pillar,
  profmem,
  rlang,
  tibble,
}:

buildRPackage {
  pname = "bench";
  version = "1.1.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bench_1.1.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bench/bench_1.1.4.tar.gz"
    ];
    sha256 = "10yhn778l8am8fq9gfb6n5gfd4nf6bls9k3da5mwrvldcjvza8mq";
  };

  propagatedBuildInputs = [
    glue
    pillar
    profmem
    rlang
    tibble
  ];

  meta = {
    description = "R package bench";
    homepage = "https://cran.r-project.org/package=bench";
  };
}
