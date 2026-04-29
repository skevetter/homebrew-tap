class TaskManagement < Formula
  desc "CLI task management tool with SQLite backend"
  homepage "https://github.com/skevetter/task-management"
  url "https://github.com/skevetter/task-management/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "61e8aa0918f98fc4ad4b4843e6c36259ec9fa19547d1f7c91e6d1b65929f1923"
  version "0.4.1"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", ".", "--root", prefix
  end

  test do
    assert_match "Usage", shell_output("#{bin}/task --help")
  end
end
