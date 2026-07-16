{
  buildRPackage,
  fetchurl,
  Matrix,
  Rdpack,
}:

buildRPackage {
  pname = "reformulas";
  version = "0.4.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/reformulas_0.4.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/reformulas/reformulas_0.4.4.tar.gz"
    ];
    sha256 = "1xz255apcwzhmy4mq1x70icppkgqfl0ih43mz2p2b4z1nigdhxka";
  };

  propagatedBuildInputs = [
    Matrix
    Rdpack
  ];

  meta = {
    description = "R package reformulas";
    homepage = "https://cran.r-project.org/package=reformulas";
  };
}
