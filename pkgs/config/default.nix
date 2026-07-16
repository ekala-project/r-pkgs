{
  buildRPackage,
  fetchurl,
  yaml,
}:

buildRPackage {
  pname = "config";
  version = "0.3.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/config_0.3.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/config/config_0.3.2.tar.gz"
    ];
    sha256 = "0r8hjg7jrhr9lncb82xmq2slygv3slacd2w8ds6shnvdp3122p3v";
  };

  propagatedBuildInputs = [
    yaml
  ];

  meta = {
    description = "R package config";
    homepage = "https://cran.r-project.org/package=config";
  };
}
