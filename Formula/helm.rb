class Helm < Formula
  desc "TUI fleet manager + agent-driven shared tmux shells"
  homepage "https://github.com/crodorg/helm"
  url "https://github.com/crodorg/helm/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "14dd28ec0e657eb992c23042db9758d36f38bc5dc76e5e5024af4e41052bd40f"
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
