class TaskManagement < Formula
  desc "CLI task management tool with SQLite backend"
  homepage "https://github.com/skevetter/task-management"
  url "https://github.com/skevetter/task-management/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "fe7dbe998b03afeb79e557c35361eb270e9c9f1dd556d7a9562cc5c034ed5028"
  version "0.1.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", ".", "--root", prefix
  end

  test do
    assert_match "Usage", shell_output("#{bin}/task --help")
  end
end
