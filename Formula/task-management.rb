class TaskManagement < Formula
  desc "CLI task management tool with SQLite backend"
  homepage "https://github.com/skevetter/task-management"
  url "https://github.com/skevetter/task-management/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "04f82553009671a68b3f7191230368716f8e54858630dc7ee25b25c06ea503e6"
  version "0.2.1"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", ".", "--root", prefix
  end

  test do
    assert_match "Usage", shell_output("#{bin}/task --help")
  end
end
