class Helm < Formula
  desc "Share a tmux session between you and an AI agent, local or ssh-remote"
  homepage "https://github.com/crodorg/helm"
  url "https://github.com/crodorg/helm/archive/refs/tags/v0.4.2.tar.gz"
  sha256 "a8a1563b064512c5127d4af8130a3de2c55a4dcee24c9149f810688e84f1d6dc"
  license "MIT"
  version "0.4.2"

  depends_on "rust" => :build
  depends_on "tmux"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "fleet manager", shell_output("#{bin}/helm help 2>&1", 0)
  end
end
