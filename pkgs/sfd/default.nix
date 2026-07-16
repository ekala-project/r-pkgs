{
  buildRPackage,
  fetchurl,
  cli,
  rlang,
  tibble,
}:

buildRPackage {
  pname = "sfd";
  version = "0.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sfd_0.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sfd/sfd_0.1.0.tar.gz"
    ];
    sha256 = "0zffbjzdzgvz7vj1wn7j7sqmnsvskkn94w7lkjxmaahd62xdh6v3";
  };

  propagatedBuildInputs = [
    cli
    rlang
    tibble
  ];

  meta = {
    description = "R package sfd";
    homepage = "https://cran.r-project.org/package=sfd";
  };
}
