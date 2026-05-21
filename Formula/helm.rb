class Helm < Formula
  desc "Share a tmux session between you and an AI agent, local or ssh-remote"
  homepage "https://github.com/crodorg/helm"
  url "https://github.com/crodorg/helm/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "530452a51ce51198fbb67d4f669330ba32733d13b842595cc9bfc11dd68881ac"
  license "MIT"
  version "0.1.0"

  depends_on "rust" => :build
  depends_on "tmux"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "TUI fleet manager", shell_output("#{bin}/helm help 2>&1", 0)
  end
end
