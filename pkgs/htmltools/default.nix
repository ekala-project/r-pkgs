{
  buildRPackage,
  fetchurl,
  base64enc,
  digest,
  fastmap,
  rlang,
}:

buildRPackage {
  pname = "htmltools";
  version = "0.5.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/htmltools_0.5.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/htmltools/htmltools_0.5.9.tar.gz"
    ];
    sha256 = "1zca289qxn9zgggijid76skl67f8vp9avvngkpv1hn28v8c8cc0r";
  };

  propagatedBuildInputs = [
    base64enc
    digest
    fastmap
    rlang
  ];

  meta = {
    description = "R package htmltools";
    homepage = "https://cran.r-project.org/package=htmltools";
  };
}
