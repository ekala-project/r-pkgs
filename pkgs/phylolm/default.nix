{
  buildRPackage,
  fetchurl,
  ape,
  future_apply,
}:

buildRPackage {
  pname = "phylolm";
  version = "2.6.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/phylolm_2.6.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/phylolm/phylolm_2.6.5.tar.gz"
    ];
    sha256 = "0sg2a7isy5f5phk2db4v2b78apdmd3k9c8jdwpkrm3lw7vxj52v5";
  };

  propagatedBuildInputs = [
    ape
    future_apply
  ];

  meta = {
    description = "R package phylolm";
    homepage = "https://cran.r-project.org/package=phylolm";
  };
}
