class Helm < Formula
  desc "Share a tmux session between you and an AI agent, local or ssh-remote"
  homepage "https://github.com/crodorg/helm"
  url "https://github.com/crodorg/helm/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "31a31518773f3014fe6cde214ae575950135046263346d0f839c2be1b83b7278"
  license "MIT"
  version "0.3.0"

  depends_on "rust" => :build
  depends_on "tmux"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "fleet manager", shell_output("#{bin}/helm help 2>&1", 0)
  end
end
