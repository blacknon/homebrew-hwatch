class Hwatch < Formula
  desc "alternative watch command"
  homepage "https://github.com/blacknon/hwatch"
  if OS.mac?
    url "https://github.com/blacknon/hwatch/releases/download/0.3.6/hwatch-0.3.6.x86_64-apple-darwin.tar.gz"
    sha256 "942d945168fc5ae65a785b8ed596a515822cb02a298de494a1db0bb044bac47e"
  end

  def install
    bin.install "bin/hwatch"
    man1.install "man/hwatch.1"
    zsh_completion.install "completion/zsh/_hwatch"
  end

  test do
    system "#{bin}/hwatch"
  end
end
