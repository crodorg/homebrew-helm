class Helm < Formula
  desc "Share a tmux session between you and an AI agent, local or ssh-remote"
  homepage "https://github.com/crodorg/helm"
  url "https://github.com/crodorg/helm/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "aaa6d797981ebcd7c2c10e18b203100d138b6a6c3e991349cc0b6bdf313b03ab"
  license "MIT"
  version "0.4.1"

  depends_on "rust" => :build
  depends_on "tmux"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "fleet manager", shell_output("#{bin}/helm help 2>&1", 0)
  end
end
