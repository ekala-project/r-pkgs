{
  buildRPackage,
  fetchurl,
  ggplot2,
  gridExtra,
  gtable,
}:

buildRPackage {
  pname = "egg";
  version = "0.4.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/egg_0.4.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/egg/egg_0.4.5.tar.gz"
    ];
    sha256 = "1fy7srpiavfn8kyrr1m84an7acgwi6ydzrg71m3b0vk7y9ybmj0m";
  };

  propagatedBuildInputs = [
    ggplot2
    gridExtra
    gtable
  ];

  meta = {
    description = "R package egg";
    homepage = "https://cran.r-project.org/package=egg";
  };
}
