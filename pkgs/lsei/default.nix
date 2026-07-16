{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "lsei";
  version = "1.3-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lsei_1.3-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lsei/lsei_1.3-1.tar.gz"
    ];
    sha256 = "0vr9cw4p916cndv0zg86vn8p8a1jp5kk7jg5jsbbyv2q13daq2qj";
  };

  meta = {
    description = "R package lsei";
    homepage = "https://cran.r-project.org/package=lsei";
  };
}
