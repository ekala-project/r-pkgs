{
  buildRPackage,
  fetchurl,
  float,
}:

buildRPackage {
  pname = "pbdMPI";
  version = "0.5-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pbdMPI_0.5-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pbdMPI/pbdMPI_0.5-5.tar.gz"
    ];
    sha256 = "15yjdq2zrwkkjkpxc9smgvbkkd2q27c4qblj0s1zicbn40d0df4p";
  };

  propagatedBuildInputs = [
    float
  ];

  meta = {
    description = "R package pbdMPI";
    homepage = "https://cran.r-project.org/package=pbdMPI";
  };
}
