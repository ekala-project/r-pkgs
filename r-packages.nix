# System dependency overrides for R packages.
#
# R packages that require native/system libraries to build.
# Ported from nixpkgs pkgs/development/r-modules/default.nix.
#
# `final.pkgs` provides the top-level package set, avoiding
# shadowing from R package names (e.g. R's `curl` vs `pkgs.curl`).
final: prev:
let
  pkgs = final.pkgs;
  lib = pkgs.lib;
  stdenv = pkgs.stdenv;
in
{
  # --------------------------------------------------------------------------
  # nativeBuildInputs overrides
  # --------------------------------------------------------------------------

  animation = prev.animation.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.which ];
  });

  arrow = throw "arrow: missing: arrow-cpp (null in corepkgs)";

  audio = throw "audio: missing: portaudio";

  bio3d = prev.bio3d.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.zlib ];
    buildInputs = (old.buildInputs or [ ]) ++ [ pkgs.zlib.dev ];
  });

  Cairo = prev.Cairo.overrideAttrs (old: {
    nativeBuildInputs =
      (old.nativeBuildInputs or [ ])
      ++ (with pkgs; [
        libtiff
        libjpeg
        cairo.dev
        libxt.dev
        fontconfig.lib
      ]);
    buildInputs = (old.buildInputs or [ ]) ++ [ pkgs.pkg-config ];
    env = (old.env or { }) // {
      NIX_LDFLAGS = "-lfontconfig";
    };
  });

  clarabel = prev.clarabel.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.cargo ];
    postPatch = ''
      patchShebangs configure
    '';
  });

  curl = prev.curl.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.curl.dev ];
    preConfigure = "patchShebangs configure";
  });

  data_table = prev.data_table.overrideAttrs (old: {
    nativeBuildInputs =
      (old.nativeBuildInputs or [ ])
      ++ [
        pkgs.pkg-config
        pkgs.zlib.dev
      ]
      ++ lib.optional stdenv.hostPlatform.isDarwin pkgs.llvmPackages.openmp;
    env = (old.env or { }) // {
      NIX_CFLAGS_COMPILE = (old.env.NIX_CFLAGS_COMPILE or "") + " -fopenmp";
    };
    patchPhase = "patchShebangs configure";
    doCheck = false;
  });

  exactextractr = throw "exactextractr: missing: geos";

  fftw = throw "fftw: missing: fftw";

  fftwtools = throw "fftwtools: missing: fftw";

  Formula = prev.Formula.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.gmp ];
  });

  gdtools = prev.gdtools.overrideAttrs (old: {
    nativeBuildInputs =
      (old.nativeBuildInputs or [ ])
      ++ (with pkgs; [
        cairo.dev
        fontconfig.lib
        freetype.dev
      ])
      ++ lib.optionals stdenv.hostPlatform.isDarwin (
        with pkgs;
        [
          expat
          libxdmcp
        ]
      );
    buildInputs = (old.buildInputs or [ ]) ++ [ pkgs.pkg-config ];
    preConfigure = ''
      patchShebangs configure
    '';
    env = (old.env or { }) // {
      NIX_LDFLAGS = "-lfontconfig -lfreetype";
    };
  });

  ggiraph = prev.ggiraph.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.libpng.dev ];
    preInstall = (old.preInstall or "") + "export HOME=$TMPDIR";
  });

  git2r = prev.git2r.overrideAttrs (old: {
    nativeBuildInputs =
      (old.nativeBuildInputs or [ ])
      ++ (with pkgs; [
        zlib.dev
        openssl.dev
        libssh2.dev
        libgit2
        pkg-config
      ]);
  });

  gmp = prev.gmp.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.gmp.dev ];
  });

  gsl = throw "gsl: missing: gsl";

  gert = prev.gert.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.libgit2 ];
  });

  haven = prev.haven.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.zlib.dev ];
  });

  httpuv = prev.httpuv.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.zlib.dev ];
    preConfigure = ''
      patchShebangs configure
    '';
  });

  imager = prev.imager.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.libx11.dev ];
  });

  jpeg = prev.jpeg.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.libjpeg.dev ];
  });

  jqr = prev.jqr.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.jq.dev ];
    buildInputs = (old.buildInputs or [ ]) ++ [ pkgs.jq.out ];
    preConfigure = ''
      patchShebangs configure
    '';
  });

  leidenAlg = prev.leidenAlg.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.gmp.dev ];
  });

  lwgeom = throw "lwgeom: missing: proj, geos";

  magick = throw "magick: missing: imagemagick (null in corepkgs)";

  ModelMetrics = prev.ModelMetrics.overrideAttrs (old: {
    nativeBuildInputs =
      (old.nativeBuildInputs or [ ])
      ++ lib.optional stdenv.hostPlatform.isDarwin pkgs.llvmPackages.openmp;
    env = (old.env or { }) // {
      NIX_CFLAGS_COMPILE =
        (old.env.NIX_CFLAGS_COMPILE or "") + lib.optionalString stdenv.hostPlatform.isDarwin " -fopenmp";
    };
  });

  mvabund = throw "mvabund: missing: gsl";

  nanonext = throw "nanonext: missing: mbedtls, nng";

  ncdf4 = throw "ncdf4: missing: netcdf";

  nloptr = throw "nloptr: missing: nlopt";

  odbc = throw "odbc: missing: unixODBC (null in corepkgs)";

  pak = prev.pak.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.curl.dev ];
    preConfigure = ''
      patchShebangs configure
      patchShebangs src/library/curl/configure
      patchShebangs src/library/keyring/configure
      patchShebangs src/library/pkgdepends/configure
      patchShebangs src/library/ps/configure
    '';
  });

  pander = throw "pander: missing: pandoc";

  pbdMPI = throw "pbdMPI: missing: mpi (null in corepkgs)";

  pbdZMQ = prev.pbdZMQ.overrideAttrs (old: {
    nativeBuildInputs =
      (old.nativeBuildInputs or [ ])
      ++ [ pkgs.pkg-config ]
      ++ lib.optionals stdenv.hostPlatform.isDarwin [ pkgs.which ];
    buildInputs = (old.buildInputs or [ ]) ++ [ pkgs.zeromq ];
  });

  pdftools = throw "pdftools: missing: poppler (null in corepkgs)";

  phytools = prev.phytools.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.which ];
  });

  PKI = prev.PKI.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.openssl.dev ];
  });

  png = prev.png.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.libpng.dev ];
  });

  protolite = prev.protolite.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.protobuf ];
    preConfigure = ''
      patchShebangs configure
    '';
  });

  RcppGSL = throw "RcppGSL: missing: gsl";

  RcppZiggurat = throw "RcppZiggurat: missing: gsl";

  redux = prev.redux.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.pkg-config ];
    buildInputs = (old.buildInputs or [ ]) ++ [ pkgs.hiredis ];
  });

  reprex = prev.reprex.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.which ];
  });

  rgdal = throw "rgdal: missing: proj";

  rgeos = throw "rgeos: missing: geos";

  Rglpk = throw "Rglpk: missing: glpk";

  rjags = throw "rjags: missing: jags";

  rJava = prev.rJava.overrideAttrs (old: {
    nativeBuildInputs =
      (old.nativeBuildInputs or [ ])
      ++ (with pkgs; [
        zlib
        bzip2.dev
        icu
        xz.dev
        zstd.dev
        pcre.dev
        java
        libzip
        libdeflate
      ]);
    preConfigure = ''
      export JAVA_CPPFLAGS=-I${pkgs.java}/include/
      export JAVA_HOME=${pkgs.java}
      substituteInPlace R/zzz.R.in \
        --replace-fail ".onLoad <- function(libname, pkgname) {" \
          ".onLoad <- function(libname, pkgname) {
           Sys.setenv(\"JAVA_HOME\" = Sys.getenv(\"JAVA_HOME\", unset = \"${pkgs.java}\"))"
    '';
  });

  Rmpfr = prev.Rmpfr.overrideAttrs (old: {
    nativeBuildInputs =
      (old.nativeBuildInputs or [ ])
      ++ (with pkgs; [
        gmp
        mpfr.dev
      ]);
    configureFlags = [
      "--with-mpfr-include=${pkgs.mpfr.dev}/include"
    ];
  });

  Rmpi = throw "Rmpi: missing: prrte";

  RMySQL = throw "RMySQL: missing: libmysqlclient";

  RNetCDF = throw "RNetCDF: missing: netcdf, udunits";

  RODBC = throw "RODBC: missing: libiodbc";

  RPostgreSQL = throw "RPostgreSQL: missing: libpq";

  RProtoBuf = prev.RProtoBuf.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.pkg-config ];
    buildInputs =
      (old.buildInputs or [ ])
      ++ (with pkgs; [
        protobuf
        (lib.getDev abseil-cpp)
      ]);
    configureFlags = [ "ac_cv_prog_cxx_cxx11=" ];
  });

  rsvg = throw "rsvg: missing: librsvg";

  runjags = throw "runjags: missing: jags";

  s2 = prev.s2.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.pkg-config ];
    buildInputs =
      (old.buildInputs or [ ])
      ++ (with pkgs; [
        abseil-cpp
        openssl.dev
      ]);
    preConfigure = ''
      substituteInPlace "configure" \
        --replace-fail "absl_s2" "absl_flags absl_check"
    '';
  });

  seqinr = prev.seqinr.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.zlib.dev ];
  });

  sf = throw "sf: missing: proj, geos";

  showtext = prev.showtext.overrideAttrs (old: {
    nativeBuildInputs =
      (old.nativeBuildInputs or [ ])
      ++ (with pkgs; [
        zlib
        libpng
        icu
        freetype.dev
      ]);
    buildInputs = (old.buildInputs or [ ]) ++ [ pkgs.pkg-config ];
  });

  stringi = prev.stringi.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.icu.dev ];
    buildInputs = (old.buildInputs or [ ]) ++ [ pkgs.pkg-config ];
  });

  svglite = prev.svglite.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.libpng.dev ];
  });

  sysfonts = prev.sysfonts.overrideAttrs (old: {
    nativeBuildInputs =
      (old.nativeBuildInputs or [ ])
      ++ (with pkgs; [
        zlib
        libpng
        freetype.dev
      ]);
    buildInputs = (old.buildInputs or [ ]) ++ [ pkgs.pkg-config ];
  });

  systemfonts = prev.systemfonts.overrideAttrs (old: {
    nativeBuildInputs =
      (old.nativeBuildInputs or [ ])
      ++ (with pkgs; [
        fontconfig.dev
        freetype.dev
      ]);
    buildInputs = (old.buildInputs or [ ]) ++ [ pkgs.pkg-config ];
    preConfigure = "patchShebangs configure";
  });

  terra = throw "terra: missing: proj, geos, netcdf";

  tesseract = throw "tesseract: missing: tesseract, leptonica";

  textshaping = prev.textshaping.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.pkg-config ];
    buildInputs =
      (old.buildInputs or [ ])
      ++ (with pkgs; [
        harfbuzz.dev
        freetype.dev
        fribidi
        libpng
      ]);
    env = {
      NIX_LDFLAGS = "-lfribidi -lharfbuzz";
    };
  });

  tiff = prev.tiff.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.libtiff.dev ];
  });

  tkrplot = prev.tkrplot.overrideAttrs (old: {
    nativeBuildInputs =
      (old.nativeBuildInputs or [ ])
      ++ (with pkgs; [
        libx11
        tk.dev
      ]);
  });

  topicmodels = throw "topicmodels: missing: gsl";

  udunits2 = throw "udunits2: missing: udunits";

  units = throw "units: missing: udunits";

  vdiffr = prev.vdiffr.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.libpng.dev ];
  });

  webp = prev.webp.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.pkg-config ];
    buildInputs = (old.buildInputs or [ ]) ++ [ pkgs.libwebp ];
  });

  XML = throw "XML: missing: xmlsec";

  xml2 = prev.xml2.overrideAttrs (old: {
    nativeBuildInputs =
      (old.nativeBuildInputs or [ ])
      ++ [ pkgs.libxml2.dev ]
      ++ lib.optionals stdenv.hostPlatform.isDarwin [ pkgs.perl ];
    preConfigure = ''
      export LIBXML_INCDIR=${pkgs.libxml2.dev}/include/libxml2
      patchShebangs configure
    '';
  });

  qqconf = throw "qqconf: missing: fftw";

  ragg = prev.ragg.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.pkg-config ];
    buildInputs =
      (old.buildInputs or [ ])
      ++ (with pkgs; [
        freetype.dev
        libpng.dev
        libtiff.dev
        zlib.dev
        libjpeg.dev
        bzip2.dev
        libwebp
      ])
      ++ lib.optional stdenv.hostPlatform.isDarwin pkgs.lerc.dev;
  });

  # --------------------------------------------------------------------------
  # buildInputs-only overrides (packages not already covered above)
  # --------------------------------------------------------------------------

  bigmemory = prev.bigmemory.overrideAttrs (old: {
    buildInputs =
      (old.buildInputs or [ ]) ++ lib.optionals stdenv.hostPlatform.isLinux [ pkgs.libuuid.dev ];
  });

  fs = prev.fs.overrideAttrs (old: {
    buildInputs = (old.buildInputs or [ ]) ++ [ pkgs.libuv ];
  });

  gaston = prev.gaston.overrideAttrs (old: {
    buildInputs = (old.buildInputs or [ ]) ++ [ pkgs.zlib.dev ];
  });

  igraph = throw "igraph: missing: glpk";

  openssl = prev.openssl.overrideAttrs (old: {
    buildInputs = (old.buildInputs or [ ]) ++ [ pkgs.pkg-config ];
    preConfigure = ''
      patchShebangs configure
    '';
    env = (old.env or { }) // {
      PKGCONFIG_CFLAGS = "-I${pkgs.openssl.dev}/include";
      PKGCONFIG_LIBS = "-Wl,-rpath,${lib.getLib pkgs.openssl}/lib -L${lib.getLib pkgs.openssl}/lib -lssl -lcrypto";
    };
  });

  PoissonBinomial = throw "PoissonBinomial: missing: fftw";

  proj4 = throw "proj4: missing: proj";

  PROJ = throw "PROJ: missing: proj";

  qpdf = prev.qpdf.overrideAttrs (old: {
    buildInputs =
      (old.buildInputs or [ ])
      ++ (with pkgs; [
        libjpeg.dev
        zlib.dev
      ]);
  });

  RcppAlgos = prev.RcppAlgos.overrideAttrs (old: {
    buildInputs = (old.buildInputs or [ ]) ++ [ pkgs.gmp.dev ];
  });

  rgl = prev.rgl.overrideAttrs (old: {
    buildInputs =
      (old.buildInputs or [ ])
      ++ (with pkgs; [
        libGLU
        libGL
        libx11.dev
        freetype.dev
        libpng.dev
      ]);
    env = (old.env or { }) // {
      RGL_USE_NULL = "true";
    };
  });

  RMariaDB = throw "RMariaDB: missing: libmysqlclient";

  RPostgres = throw "RPostgres: missing: libpq";

  # Signac override moved to missing R deps section below

  spaMM = throw "spaMM: missing: gsl";

  tcltk2 = prev.tcltk2.overrideAttrs (old: {
    buildInputs =
      (old.buildInputs or [ ])
      ++ (with pkgs; [
        tcl
        tk
      ]);
  });

  tikzDevice = prev.tikzDevice.overrideAttrs (old: {
    buildInputs =
      (old.buildInputs or [ ])
      ++ (with pkgs; [
        which
        texliveMedium
      ]);
  });

  gridGraphics = prev.gridGraphics.overrideAttrs (old: {
    buildInputs = (old.buildInputs or [ ]) ++ [ pkgs.which ];
  });

  vcfR = prev.vcfR.overrideAttrs (old: {
    buildInputs = (old.buildInputs or [ ]) ++ [ pkgs.zlib.dev ];
  });

  writexl = prev.writexl.overrideAttrs (old: {
    buildInputs = (old.buildInputs or [ ]) ++ [ pkgs.zlib.dev ];
  });

  # --------------------------------------------------------------------------
  # packagesRequiringHome
  # --------------------------------------------------------------------------

  PSCBS = throw "PSCBS: missing R deps: aroma_light, DNAcopy";

  repmis = prev.repmis.overrideAttrs (old: {
    preInstall = (old.preInstall or "") + "export HOME=$TMPDIR";
  });

  R_cache = prev.R_cache.overrideAttrs (old: {
    preInstall = (old.preInstall or "") + "export HOME=$TMPDIR";
  });

  R_rsp = prev.R_rsp.overrideAttrs (old: {
    preInstall = (old.preInstall or "") + "export HOME=$TMPDIR";
  });

  styler = prev.styler.overrideAttrs (old: {
    preInstall = (old.preInstall or "") + "export HOME=$TMPDIR";
  });

  shinymeta = prev.shinymeta.overrideAttrs (old: {
    preInstall = (old.preInstall or "") + "export HOME=$TMPDIR";
  });

  pins = prev.pins.overrideAttrs (old: {
    preInstall = (old.preInstall or "") + "export HOME=$TMPDIR";
  });

  fixest = prev.fixest.overrideAttrs (old: {
    preInstall = (old.preInstall or "") + "export HOME=$TMPDIR";
    postPatch = "patchShebangs configure";
  });

  # --------------------------------------------------------------------------
  # brokenPackages
  # --------------------------------------------------------------------------

  av = throw "av: missing ffmpeg";

  # --------------------------------------------------------------------------
  # otherOverrides (patchShebangs, env vars, configure flags, etc.)
  # --------------------------------------------------------------------------

  cubature = prev.cubature.overrideAttrs (_: {
    enableParallelBuilding = false;
  });

  findpython = prev.findpython.overrideAttrs (old: {
    postPatch = ''
      substituteInPlace "R/find_python_cmd.r" \
        --replace-fail 'python_cmds[which(python_cmds != "")]' \
        'python_cmds <- c(python_cmds, file.path("${lib.getBin pkgs.python3}", "bin", "python3"))
         python_cmds[which(python_cmds != "")]'
    '';
  });

  float = prev.float.overrideAttrs (_: {
    enableParallelBuilding = false;
  });

  hdf5r = throw "hdf5r: missing: Rhdf5lib.hdf5";

  httr2 = prev.httr2.overrideAttrs (_: {
    preConfigure = "patchShebangs configure";
  });

  keyring = prev.keyring.overrideAttrs (_: {
    preConfigure = ''
      patchShebangs configure
    '';
  });

  nanoparquet = prev.nanoparquet.overrideAttrs (_: {
    postPatch = "patchShebangs configure";
  });

  OpenMx = prev.OpenMx.overrideAttrs (old: {
    env = (old.env or { }) // {
      NIX_CFLAGS_COMPILE = (old.env.NIX_CFLAGS_COMPILE or "") + " -Wno-ignored-attributes";
    };
    preConfigure = ''
      patchShebangs configure
    '';
  });

  pkgdepends = prev.pkgdepends.overrideAttrs (_: {
    postPatch = ''
      patchShebangs configure
    '';
  });

  pingr = prev.pingr.overrideAttrs (_: {
    postPatch = "patchShebangs configure";
  });

  ps = prev.ps.overrideAttrs (_: {
    preConfigure = "patchShebangs configure";
  });

  purrr = prev.purrr.overrideAttrs (_: {
    patchPhase = "patchShebangs configure";
  });

  quarto = throw "quarto: missing: quarto";

  RcppArmadillo = prev.RcppArmadillo.overrideAttrs (_: {
    patchPhase = "patchShebangs configure";
  });

  RcppParallel = prev.RcppParallel.overrideAttrs (_: {
    preConfigure = "patchShebangs configure";
  });

  redland = throw "redland: missing: redland, librdf_raptor2, librdf_rasqal";

  rlang = prev.rlang.overrideAttrs (_: {
    preConfigure = "patchShebangs configure";
  });

  rmarkdown = throw "rmarkdown: missing: pandoc";

  rpf = prev.rpf.overrideAttrs (_: {
    patchPhase = "patchShebangs configure";
  });

  rstan = prev.rstan.overrideAttrs (old: {
    env = (old.env or { }) // {
      NIX_CFLAGS_COMPILE = (old.env.NIX_CFLAGS_COMPILE or "") + " -DBOOST_PHOENIX_NO_VARIADIC_EXPRESSION";
    };
  });

  Rserve = prev.Rserve.overrideAttrs (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.openssl ];
    configureFlags = [
      "--with-server"
      "--with-client"
    ];
  });

  sodium = prev.sodium.overrideAttrs (old: {
    preConfigure = ''
      patchShebangs configure
    '';
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ pkgs.pkg-config ];
    buildInputs = (old.buildInputs or [ ]) ++ [ pkgs.libsodium.dev ];
  });

  V8 = throw "V8: missing: nodejs-slim_22";

  webfakes = prev.webfakes.overrideAttrs (_: {
    postPatch = "patchShebangs configure";
  });

  websocket = prev.websocket.overrideAttrs (old: {
    env = (old.env or { }) // {
      PKGCONFIG_CFLAGS = "-I${pkgs.openssl.dev}/include";
      PKGCONFIG_LIBS = "-Wl,-rpath,${lib.getLib pkgs.openssl}/lib -L${lib.getLib pkgs.openssl}/lib -lssl -lcrypto";
    };
  });

  # --------------------------------------------------------------------------
  # Packages with missing R-level dependencies (not in package set)
  # --------------------------------------------------------------------------

  alakazam = throw "alakazam: missing R deps: Biostrings, GenomicAlignments, IRanges";

  biomartr = throw "biomartr: missing R deps: biomaRt, Biostrings";

  Boruta = throw "Boruta: missing R dep: fru";

  bssm = throw "bssm: missing R deps: diagis, ramcmc";

  CodeDepends = throw "CodeDepends: missing R dep: graph";

  CVXR = throw "CVXR: missing R dep: highs";

  detectseparation = throw "detectseparation: missing R dep: ROI_plugin_lpsolve";

  FSA = throw "FSA: missing R deps: dunn_test, FlexParamCurve";

  genieclust = throw "genieclust: missing R dep: deadwood";

  ggm = throw "ggm: missing R dep: graph";

  isva = throw "isva: missing R dep: qvalue";

  logistf = throw "logistf: missing R dep: formula_tools";

  meta = throw "meta: missing R dep: metabook";

  mutoss = throw "mutoss: missing R dep: multtest";

  NMF = throw "NMF: missing R dep: Biobase";

  RandomFields = throw "RandomFields: missing R dep: RandomFieldsUtils";

  restfulr = throw "restfulr: missing R dep: S4Vectors";

  Rfast = throw "Rfast: missing R dep: zigg";

  samr = throw "samr: missing R dep: impute";

  Signac = throw "Signac: missing R deps: BiocGenerics, GenomeInfoDb, GenomicRanges, IRanges, Rsamtools, S4Vectors, sparseMatrixStats";

  tune = throw "tune: missing R dep: GauPro";

  vcdExtra = throw "vcdExtra: missing R deps: gt, webshot2";

  VIM = throw "VIM: missing R dep: mlr3pipelines";

  WGCNA = throw "WGCNA: missing R deps: impute, preprocessCore";
}
