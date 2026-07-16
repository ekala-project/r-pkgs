{
  buildRPackage,
  fetchurl,
  cli,
  digest,
  fs,
  rappdirs,
  rlang,
}:

buildRPackage {
  pname = "yulab_utils";
  version = "0.2.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/yulab_utils_0.2.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/yulab_utils/yulab_utils_0.2.4.tar.gz"
    ];
    sha256 = "10bv812pxcdly1ggq0czfypqn2kq6jpfmh03sjpx30bybzbmaw23";
  };

  propagatedBuildInputs = [
    cli
    digest
    fs
    rappdirs
    rlang
  ];

  meta = {
    description = "R package yulab_utils";
    homepage = "https://cran.r-project.org/package=yulab_utils";
  };
}
