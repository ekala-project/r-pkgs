{
  buildRPackage,
  fetchurl,
  base64enc,
  cli,
  cpp11,
  lifecycle,
  rlang,
  systemfonts,
  textshaping,
}:

buildRPackage {
  pname = "svglite";
  version = "2.2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/svglite_2.2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/svglite/svglite_2.2.2.tar.gz"
    ];
    sha256 = "0z0qhsbax6ijhkshh5aaj8z7cxsb5r9w1vdwc1f3zgqz0gp89y2v";
  };

  propagatedBuildInputs = [
    base64enc
    cli
    cpp11
    lifecycle
    rlang
    systemfonts
    textshaping
  ];

  meta = {
    description = "R package svglite";
    homepage = "https://cran.r-project.org/package=svglite";
  };
}
