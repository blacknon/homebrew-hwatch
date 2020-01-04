class Hwatch < Formula
  desc "alternative watch command"
  homepage "https://github.com/blacknon/hwatch"
  if OS.mac?
      url "https://github.com/blacknon/hwatch/releases/download/0.1.3/hwatch_0.1.3_darwin_amd64.tar.gz"
    sha256 "7902fc6daa35e9a111d99d13015f961aec8b881888740eb5236ff5aa45d517e7"
  end

  depends_on 'ncurses'

  def install
    bin.install Dir['hwatch']
    zsh_completion.install hwatch/completions/_hwatch
  end
  test do
    system "#{bin}/hwatch"
  end
end
