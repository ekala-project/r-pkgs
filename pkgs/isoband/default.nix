{
  buildRPackage,
  fetchurl,
  cli,
  cpp11,
  rlang,
}:

buildRPackage {
  pname = "isoband";
  version = "0.3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/isoband_0.3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/isoband/isoband_0.3.0.tar.gz"
    ];
    sha256 = "1b14qjmyf7ak95wqdj89dzvz66480p02l5c9ycrfxfvmr9c3v3gy";
  };

  propagatedBuildInputs = [
    cli
    cpp11
    rlang
  ];

  meta = {
    description = "R package isoband";
    homepage = "https://cran.r-project.org/package=isoband";
  };
}
