class GithubFlowSugar < Formula
  desc ""
  homepage ""
  url "https://github.com/grandmarnier/github-flow-sugar/archive/v0.0.2.tar.gz"
  version "0.0.2"
  sha256 "593b3e9ddf880231252c6e3e9304d9bc47577335a362056619d68f0e92bf3fd5"

  COMMANDS = %w(git-feature git-pr git-release)

  def install
    system *%W(install -d -m 755 #{bin})
    system *%W(install -d -m 755), *COMMANDS, bin.to_s
  end

  def post_install
    COMMANDS.each do |command|
      system "ln", "-s", "#{bin}/#{command}", "/usr/local/bin"
    end
  end
end
