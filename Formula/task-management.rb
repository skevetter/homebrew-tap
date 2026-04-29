class TaskManagement < Formula
  desc "CLI task management tool with SQLite backend"
  homepage "https://github.com/skevetter/task-management"
  url "https://github.com/skevetter/task-management/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "4e3bd812fcd42e156c15ded84f8fff277a65a7eaa62ddf56490c6625fa31be49"
  version "0.2.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", ".", "--root", prefix
  end

  test do
    assert_match "Usage", shell_output("#{bin}/task --help")
  end
end
