class Helm < Formula
  desc "Share a tmux session between you and an AI agent, local or ssh-remote"
  homepage "https://github.com/crodorg/helm"
  url "https://github.com/crodorg/helm/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "1bb7515b2e5cd287ae8fba24f53cfe199dfe76339f40b2433c609a7801feede7"
  license "MIT"
  version "0.1.1"

  depends_on "rust" => :build
  depends_on "tmux"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "TUI fleet manager", shell_output("#{bin}/helm help 2>&1", 0)
  end
end
