{
  buildRPackage,
  fetchurl,
  cli,
  memoise,
  rlang,
}:

buildRPackage {
  pname = "conflicted";
  version = "1.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/conflicted_1.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/conflicted/conflicted_1.2.0.tar.gz"
    ];
    sha256 = "121h4b4rms23szcfs1nrbgdk812d61vhrmwn9lgpsgnsaaxqd6y9";
  };

  propagatedBuildInputs = [
    cli
    memoise
    rlang
  ];

  meta = {
    description = "R package conflicted";
    homepage = "https://cran.r-project.org/package=conflicted";
  };
}
