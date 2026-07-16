{
  buildRPackage,
  fetchurl,
  Formula,
  partykit,
  psychotools,
}:

buildRPackage {
  pname = "psychotree";
  version = "0.16-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/psychotree_0.16-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/psychotree/psychotree_0.16-2.tar.gz"
    ];
    sha256 = "0v3hcrvscdd6m6g37ihacr33bfs6vmbvfb1yd17hyj4a77xzdnzb";
  };

  propagatedBuildInputs = [
    Formula
    partykit
    psychotools
  ];

  meta = {
    description = "R package psychotree";
    homepage = "https://cran.r-project.org/package=psychotree";
  };
}
