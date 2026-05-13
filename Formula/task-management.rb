class TaskManagement < Formula
  desc "CLI task management tool with SQLite backend"
  homepage "https://github.com/skevetter/task-management"
  url "https://github.com/skevetter/task-management/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "f1151aef2a39f3b7c459ed50b4a86e6ad487d288499260ada7418cc17bb92aba"
  version "0.5.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", ".", "--root", prefix
  end

  test do
    assert_match "Usage", shell_output("#{bin}/task --help")
  end
end
