{
  buildRPackage,
  fetchurl,
  DBI,
  bit64,
  brio,
  cli,
  clock,
  cpp11,
  curl,
  gargle,
  httr,
  jsonlite,
  lifecycle,
  nanoparquet,
  prettyunits,
  rapidjsonr,
  rlang,
  tibble,
}:

buildRPackage {
  pname = "bigrquery";
  version = "1.6.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bigrquery_1.6.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bigrquery/bigrquery_1.6.2.tar.gz"
    ];
    sha256 = "11qanpx85f38m47a4viy4qp04bpklh06x08d5py6z7r7jbhnl8s4";
  };

  propagatedBuildInputs = [
    DBI
    bit64
    brio
    cli
    clock
    cpp11
    curl
    gargle
    httr
    jsonlite
    lifecycle
    nanoparquet
    prettyunits
    rapidjsonr
    rlang
    tibble
  ];

  meta = {
    description = "R package bigrquery";
    homepage = "https://cran.r-project.org/package=bigrquery";
  };
}
