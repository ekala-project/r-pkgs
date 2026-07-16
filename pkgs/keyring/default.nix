{
  buildRPackage,
  fetchurl,
  R6,
  askpass,
  filelock,
  yaml,
}:

buildRPackage {
  pname = "keyring";
  version = "1.4.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/keyring_1.4.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/keyring/keyring_1.4.1.tar.gz"
    ];
    sha256 = "116fad7zhhrcbmfmxih11q18x9a9prkln9i503y98i6dr0glb8pv";
  };

  propagatedBuildInputs = [
    R6
    askpass
    filelock
    yaml
  ];

  meta = {
    description = "R package keyring";
    homepage = "https://cran.r-project.org/package=keyring";
  };
}
