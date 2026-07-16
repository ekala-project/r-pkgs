{
  buildRPackage,
  fetchurl,
  SuperLearner,
  future_apply,
  np,
}:

buildRPackage {
  pname = "drtmle";
  version = "1.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/drtmle_1.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/drtmle/drtmle_1.1.2.tar.gz"
    ];
    sha256 = "0qvdxzvpi7a66gx61v6fj31zy4y5cid18g4qgv5lir7qc74rbbx0";
  };

  propagatedBuildInputs = [
    SuperLearner
    future_apply
    np
  ];

  meta = {
    description = "R package drtmle";
    homepage = "https://cran.r-project.org/package=drtmle";
  };
}
