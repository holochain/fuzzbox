FROM nixos/nix
ADD shell.nix ./shell.nix
ADD . .
RUN nix-shell --run "cargo install cargo-test-fuzz afl"
ENV AFL_SKIP_CPUFREQ=1
