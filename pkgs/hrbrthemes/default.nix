{
  buildRPackage,
  fetchurl,
  ggplot2,
  magrittr,
  scales,
}:

buildRPackage {
  pname = "hrbrthemes";
  version = "0.9.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/hrbrthemes_0.9.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/hrbrthemes/hrbrthemes_0.9.3.tar.gz"
    ];
    sha256 = "17vj88vxkm43hrgdc1mlss5vza2hr384s3lmygzhs2ada9jpy7ck";
  };

  propagatedBuildInputs = [
    ggplot2
    magrittr
    scales
  ];

  meta = {
    description = "R package hrbrthemes";
    homepage = "https://cran.r-project.org/package=hrbrthemes";
  };
}
