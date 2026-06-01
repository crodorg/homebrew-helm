class Helm < Formula
  desc "Share a tmux session between you and an AI agent, local or ssh-remote"
  homepage "https://github.com/crodorg/helm"
  url "https://github.com/crodorg/helm/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "dc2cbb336a18898d72b2b91b0e8628bfa5457ec49b4dc1d8745e39870c8bb496"
  license "MIT"
  version "0.2.0"

  depends_on "rust" => :build
  depends_on "tmux"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "TUI fleet manager", shell_output("#{bin}/helm help 2>&1", 0)
  end
end
