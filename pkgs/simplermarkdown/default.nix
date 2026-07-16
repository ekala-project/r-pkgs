{
  buildRPackage,
  fetchurl,
  rjson,
}:

buildRPackage {
  pname = "simplermarkdown";
  version = "0.0.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/simplermarkdown_0.0.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/simplermarkdown/simplermarkdown_0.0.6.tar.gz"
    ];
    sha256 = "0lffwsrhsdqcqhklh24v0y0x6w4vq9jch93m330kfdv2amab1l06";
  };

  propagatedBuildInputs = [
    rjson
  ];

  meta = {
    description = "R package simplermarkdown";
    homepage = "https://cran.r-project.org/package=simplermarkdown";
  };
}
