{
  buildRPackage,
  fetchurl,
  magick,
}:

buildRPackage {
  pname = "animation";
  version = "2.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/animation_2.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/animation/animation_2.8.tar.gz"
    ];
    sha256 = "1njq0a8dpz4mmq9xblx1803xai4f7q6wqc25q77gxbl18kfnykyb";
  };

  propagatedBuildInputs = [
    magick
  ];

  meta = {
    description = "R package animation";
    homepage = "https://cran.r-project.org/package=animation";
  };
}
