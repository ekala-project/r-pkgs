{
  buildRPackage,
  fetchurl,
  SnowballC,
}:

buildRPackage {
  pname = "lsa";
  version = "0.73.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lsa_0.73.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lsa/lsa_0.73.4.tar.gz"
    ];
    sha256 = "011x60j6irlbf8pxwvngg6nm1m30qsa1gzc8x41zk7j1nk8g9qwb";
  };

  propagatedBuildInputs = [
    SnowballC
  ];

  meta = {
    description = "R package lsa";
    homepage = "https://cran.r-project.org/package=lsa";
  };
}
