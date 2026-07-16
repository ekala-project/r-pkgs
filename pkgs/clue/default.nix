{
  buildRPackage,
  fetchurl,
  cluster,
}:

buildRPackage {
  pname = "clue";
  version = "0.3-68";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/clue_0.3-68.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/clue/clue_0.3-68.tar.gz"
    ];
    sha256 = "05ijia1kfidl1mxwn0srhaf0nv6snv5qhga4xw0706a1vdqix136";
  };

  propagatedBuildInputs = [
    cluster
  ];

  meta = {
    description = "R package clue";
    homepage = "https://cran.r-project.org/package=clue";
  };
}
