class Helm < Formula
  desc "Share a tmux session between you and an AI agent, local or ssh-remote"
  homepage "https://github.com/crodorg/helm"
  url "https://github.com/crodorg/helm/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "4ab2999257927c240dfbca05555034f3c2e6940c95ddf400dc40fe91889d4780"
  license "MIT"
  version "0.4.0"

  depends_on "rust" => :build
  depends_on "tmux"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "fleet manager", shell_output("#{bin}/helm help 2>&1", 0)
  end
end
