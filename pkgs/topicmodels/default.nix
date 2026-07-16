{
  buildRPackage,
  fetchurl,
  modeltools,
  slam,
  tm,
}:

buildRPackage {
  pname = "topicmodels";
  version = "0.2-17";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/topicmodels_0.2-17.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/topicmodels/topicmodels_0.2-17.tar.gz"
    ];
    sha256 = "138nsmwgg3npk3i78xagpm6fw1g4ixmikan1jmv3066kymgy2rrq";
  };

  propagatedBuildInputs = [
    modeltools
    slam
    tm
  ];

  meta = {
    description = "R package topicmodels";
    homepage = "https://cran.r-project.org/package=topicmodels";
  };
}
