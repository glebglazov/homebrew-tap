class Pop < Formula
  desc "CLI tool for quickly switching between projects and git worktrees using tmux"
  homepage "https://github.com/glebglazov/pop"
  head "https://github.com/glebglazov/pop.git", branch: "master"
  license "MIT"

  depends_on "go" => :build
  depends_on "tmux"

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "pop", shell_output("#{bin}/pop --help")
  end
end
