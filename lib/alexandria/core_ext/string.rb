#encoding: utf-8

class String
  def to_greeklish
    Greeklish::to_greeklish(self)
  end
end

class Greeklish
  RULES = {
    "άι"           => "ai",
    "όι"           => "oi",
    "ηύ"           => "iv",

    /[αάᾶᾳἀἄἆὰᾱᾰ]/ => "α",
    /[εέἐὲ]/       => "ε",
    /[ηήῆῃἠὴἥ]/    => "η",
    /[ύϋὐΰῦὑὺῡῠ]/  => "υ",
    /[ώὼῳῶὠὡ]/     => "ω",
    /[όὸ]/         => "ω",
    /[ιί]/         => "ι",
    /[ΐ]/          => "ϊ",
    /[υύ]/         => "υ",
    /[ΆᾺᾼ]/        => "Α",
    /[ΈῈ]/         => "Ε",
    /[ΪΊῚ]/        => "Ι",
    /[ΌῸ]/         => "Ο",
    /[ΫῪΎ]/        => "Υ",
    /[ΏῺῼ]/        => "Ω",

    # After tonos replacement rules
    "ου"           => "u",
    "ει"           => "i",
    "αι"           => "e",
    "αϊ"           => "ai",
    "οι"           => "i",
    "υι"           => "i",
    "α[ϊΐ]"        => "ai",
    "ηυ"           => "if",


    # the rules for 'αυ'
    # Note that αυ = αφ(af) or αυ = αβ(av)
    /αυ$/           => "af",   # at end of word
    /αυ([πτκφθσχ])/ => 'af\1', # single quotes, followed by 'no-sound' letter
    "αυ"            => "av",   # followed by 'hard' letter or vowel

    # The rules for "ευ"
    /ευ$/           => "ef",   # at end of word
    /ευφ/           => "ef",
    /ευ([πτκθσχ])/  => 'ef\1', # single quotes, followed by 'no-sound' letter
    "ευ"            => "ev",   # followed by 'hard' letter or vowel

    # Special 'σ' case
    /σ([βδγζμνρλ])/ => 'z\1',

    "φγκ"          => "fg",
    "γγ"           => "ng",
    "γκ"           => "ng",
    "γχ"           => "nx",
    "γξ"           => "nks",

    "ββ"           => "v",
    "κκ"           => "k",
    "λλ"           => "l",
    "μμ"           => "m",
    "νν"           => "n",
    "ππ"           => "p",
    "ρρ"           => "r",
    "ττ"           => "t",

    "Α" => "A",
    "Β" => "B",
    "Γ" => "G",
    "Δ" => "D",
    "Ε" => "E",
    "Ζ" => "Z",
    "Η" => "H",
    "Θ" => "Th",
    "Ι" => "I",
    "Κ" => "K",
    "Λ" => "L",
    "Μ" => "M",
    "Ν" => "N",
    "Ξ" => "Ks",
    "Ο" => "O",
    "Π" => "P",
    "Ρ" => "R",
    "Σ" => "S",
    "Τ" => "T",
    "Υ" => "Y",
    "Φ" => "F",
    "Χ" => "X",
    "Ψ" => "Ps",
    "Ω" => "O",
    "α" => "a",
    "β" => "v",
    "γ" => "g",
    "δ" => "d",
    "ε" => "e",
    "ζ" => "z",
    "η" => "i",
    "θ" => "th",
    "ι" => "i",
    "κ" => "k",
    "λ" => "l",
    "μ" => "m",
    "ν" => "n",
    "ξ" => "ks",
    "ο" => "o",
    "π" => "p",
    "ρ" => "r",
    "σ" => "s",
    "ς" => "s",
    "τ" => "t",
    "υ" => "i",
    "φ" => "f",
    "χ" => "x",
    "ψ" => "ps",
    "ω" => "o",
    "ϊ" => "i",
    }


    def self.to_greeklish(text)
      #text = text.mb_chars.downcase
      Greeklish::RULES.each do |from,to|
        text = text.gsub(from,to)
      end
      text
    end

end