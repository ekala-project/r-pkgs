{
  buildRPackage,
  fetchurl,
  BBmisc,
  DBI,
  RSQLite,
  backports,
  brew,
  checkmate,
  data_table,
  digest,
  sendmailR,
  stringi,
}:

buildRPackage {
  pname = "BatchJobs";
  version = "1.10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/BatchJobs_1.10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/BatchJobs/BatchJobs_1.10.tar.gz"
    ];
    sha256 = "1xgylb8bfp0rl4sif16ai1hy018kfmx9lmwrlqixk4ynal4kxjqy";
  };

  propagatedBuildInputs = [
    BBmisc
    DBI
    RSQLite
    backports
    brew
    checkmate
    data_table
    digest
    sendmailR
    stringi
  ];

  meta = {
    description = "R package BatchJobs";
    homepage = "https://cran.r-project.org/package=BatchJobs";
  };
}
