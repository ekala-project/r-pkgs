{
  buildRPackage,
  fetchurl,
  curl,
  jsonlite,
}:

buildRPackage {
  pname = "RPushbullet";
  version = "0.3.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RPushbullet_0.3.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RPushbullet/RPushbullet_0.3.5.tar.gz"
    ];
    sha256 = "0xp6i08zh5x144iirzbi9czz4xmx9r1y001g32ibrnxwlsd92zxh";
  };

  propagatedBuildInputs = [
    curl
    jsonlite
  ];

  meta = {
    description = "R package RPushbullet";
    homepage = "https://cran.r-project.org/package=RPushbullet";
  };
}
