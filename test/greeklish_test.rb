#encoding: utf-8
require "test/unit"
require "alexandria"

class GreekLishTest <Test::Unit::TestCase

  def greeklish_me(examples)
    examples.each do |text,greeklish|
      assert_equal  greeklish, text.to_greeklish
    end
  end

  # Words with 'αυ' is hard to get it right
  # "Words with 'αυ'."
  def test_au
    greeklish_me( {
      "ταυ"        => "taf",
      "αυθεντικός" => "afthentikos",
      "αύρα"       => "avra",
      "αύριο"      => "avrio",
      "αύγουστος"  => "avgustos",
      "ταυτόχρονα" => "taftoxrona",
      "αυλή"       => "avli",
      "αυτός"      => "aftos",
      "θαυμάζω"    => "thavmazo",
      "παύση"      => "pafsi",
      "καύση"      => "kafsi",
      "κένταυρος"  => "kentavros",
      "αυγό"       => "avgo",
      "Παύλος"     => "Pavlos",
      "προαυλιο"   => "proavlio",
      "θαυμα"      => "thavma",
      "τράυμα"     => "travma",
      "μαύρος"     => "mavros",
      "ταύρος"     => "tavros",
      "σαύρα"      => "savra",
    })
  end

  # "Words with 'ευ'."
  def test_eu
    greeklish_me( {
      "ευρώπη"     => "evropi",
      "ευφορία"    => "eforia",
      "ευχή"       => 'efxi',
      "φεύγω"      => "fevgo",
      "ρεύμα"      => "revma",
      "νεύρα"      => "nevra",
      "φυτεύω"     => "fitevo",
      "χαζεύω"     => "xazevo",
    })
  end

  # test "Words with double vowels." do
  def test_dd
    greeklish_me( {
      "αηδόνι"     => "aidoni",
      "κελαηδάει"  => "kelaidai",
      "αϊτός"      => 'aitos',
      "γάιδαρο"    => "gaidaro",
      "φράουλα"    => "fraula",
      "προίκα"     => "prika",
      "προϊόν"     => "proion",
    })
  end

  # test "Words with 'σ' that sounds like 'z'." do
  def test_sz
    greeklish_me( {
      "σβούρα"     => "zvura",
      "σμήνος"     => "zminos",
      "οργανισμός" => "organizmos",
    })
  end


  # test "Words with double letters." do
  def test_ddd
    greeklish_me( {
      "σαββάτο"  => "savato",
      "αλλού"    => "alu",
      "θάλλασα"  => 'thalasa',
      "γραμμα"   => "grama",
    })
  end

  # test "Words with 'αι'." do
  def test_ai
    greeklish_me( {
      "αίθουσα"    => "ethusa",
      "έπαινος"    => "epenos",
      "λαιμός"     => "lemos",
      "λερναία"    => "lernea",
      "σπουδαίος"  => "spudeos",
      "αιτιατική"  => "etiatiki",
    })
  end

  #test "Words with 'ηυ'." do
  def test_hi
    greeklish_me( {
      "εφηύρα" => "efivra",
      "ηυξημένος" => "ifksimenos",
    })
  end


  #test "Greeklish examples" do
  def test_misc
    greeklish_me( {
      #"Πάγκαλος" => "Malakas",
      "καλημέρα" => "kalimera",
      "αφγκανιστάν"=> "afganistan",
      "ἥρως" => "iros",
      "βίος" => "vios",
      "γάλα" => "gala",
      "γη" => "gi",
      "δῆμος" => "dimos",
      "ζώνη" => "zoni",
      "θεολογία" => "theologia",
      "καλός" => "kalos",
      "κύκλος" => "kiklos",
      "λεξικό" => "leksiko",
      "ελιά" => "elia",
      "μηχανικός" => "mixanikos",
      "νέος" => "neos",
      "νιότη" => "nioti",
      "ξενοφοβία" => "ksenofovia",
      "πρόγραμμα" => "programa",
      "ρητορική" => "ritoriki",
      "σύστημα" => "sistima",
      "τηλέφωνο" => "tilefono",
      "φαινόμενο" => "fenomeno",
      "χάος" => "xaos",
      "χειρόγραφος" => "xirografos",
      "ψυχοθεραπεία" => "psixotherapia",
      "αγγούρι" => "anguri",
      "συγγραφέας" => "singrafeas",
      "άγγελος" => "angelos",
      "εγκώμιο" => "engomio",
      "εγγενής" => "engenis",
      "εγκυκλοπαίδεια" => "engiklopedia",
      "άγχος" => "anxos",
      "εγχείριση" => "enxirisi",
      "έλεγξα" => "elenksa",
      "εμπάθεια" => "empathia",
      "εντάξει" => "entaksi",
      "τσάι" => "tsai",
      "τζαζ" => "tzaz",
      "αλφάβητο" => "alfavito",
      "ενέργεια" => "energia",
      "ηθική" => "ithiki",
      "ιστορία" => "istoria",
      "υγιεινή" => "igiini",
      "οικονομία" => "ikonomia",
      "υιός" => "ios",

      "ώρα" => "ora",

      "ουτοπία" => "utopia",
      "αιγιαλός" => "egialos",

      "άξιος" => "aksios",
      "πριονοκορδέλα" => "prionokordela",
      "άξενος" => "aksenos",

      "θάλλασα" => "thalasa",
      "αεροδρόμια" => "aerodromia",
      "υποχρεωμένος" => "ipoxreomenos",
      "σφυρί" => "sfiri",
      "φακοειδής" => "fakoidis"
    })
  end
end