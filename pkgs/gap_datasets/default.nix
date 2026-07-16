{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "gap_datasets";
  version = "0.0.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gap_datasets_0.0.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gap_datasets/gap_datasets_0.0.6.tar.gz"
    ];
    sha256 = "1jwpsb66sgj2zzgrpgwxc22df66gbhi278ywbmaicc10mipv050y";
  };

  meta = {
    description = "R package gap_datasets";
    homepage = "https://cran.r-project.org/package=gap_datasets";
  };
}
