//
//  AllSongsBank.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/10/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import Foundation


class AllSongsBank{
    
    var titleSongsTagalog : [String] = Array()
    var artistSongsTagalog : [String] = Array()
    var partialLyricsTagalog : [String] = Array()
    var lyricsnchordsTagalog : [String] = Array()
    var isFavoriteTagalog : [Bool] = Array()
    var isPlayTagalog : [Bool] = Array()
    
    var titleSongsIlokano : [String] = Array()
    var artistSongsIlokano : [String] = Array()
    var partialLyricsIlokano : [String] = Array()
    var lyricsnchordsIlokano : [String] = Array()
    var isFavoriteIlokano : [Bool] = Array()
    var isPlayIlokano : [Bool] = Array()
    
    var titleSongsPangasinan : [String] = Array()
    var artistSongsPangasinan : [String] = Array()
    var partialLyricsPangasinan : [String] = Array()
    var lyricsnchordsPangasinan : [String] = Array()
    var isFavoritePangasinan : [Bool] = Array()
    var isPlayPangasinan : [Bool] = Array()
    
    init() {
        //tagalog

        titleSongsTagalog.append("214")
        titleSongsTagalog.append("Alapaap")
        titleSongsTagalog.append("Aaminin")
        titleSongsTagalog.append("Buloy")
        titleSongsTagalog.append("Kasalanan")
        titleSongsTagalog.append("Halaga")
        titleSongsTagalog.append("Harana")
        titleSongsTagalog.append("Kung wala ka")
        titleSongsTagalog.append("Para sayo")
        titleSongsTagalog.append("Walang hiyang pare ko")
        artistSongsTagalog.append("rivermaya")
        artistSongsTagalog.append("Eraserheads")
        artistSongsTagalog.append("6cyclemind")
        artistSongsTagalog.append("Parokya ni Edgar")
        artistSongsTagalog.append("6cyclemind")
        artistSongsTagalog.append("Parokya ni Edgar")
        artistSongsTagalog.append("Parokya ni Edgar")
        artistSongsTagalog.append("Hale")
        artistSongsTagalog.append("Parokya ni Edgar")
        artistSongsTagalog.append("Eraserheads")
        partialLyricsTagalog.append("The world could die and everything may liee still you may cry, coz I may pass the longer it will last")
        partialLyricsTagalog.append("May isang umaga na tayo'y magsasama Haya at halina sa ala  paap Hanggang sa dulo ng mundo,")
        partialLyricsTagalog.append("Kamusta ka na? Sanay ikaw ay laging masaya ngayon Kasamang mga kaibigan mo Pakinggan mo ang sasabihin ko")
         partialLyricsTagalog.append("Hoy hoy, Buloy Naalala mo pa ba nung ako ay ma kickout Kasi daw ako'y tanga (tanga) Ng aking ama't ina")
        partialLyricsTagalog.append("Patawarin mo ako sa aking nagawang kasalanan kasalanaaan")
        partialLyricsTagalog.append("Umiiyak ka na naman Langya talaga wala ka bang ibang alam")
        partialLyricsTagalog.append("Uso pa ba ang harana? Marahil ikaw ay nagtataka ino ba 'tong mukhang gago? At nasisintunado sa kaba")
        
        partialLyricsTagalog.append("Natapos na ang lahat Nandito parin ako Sa mundo, Sa mundo Ohh, Hindi ko maisip")
        partialLyricsTagalog.append("Lumayo ka na sa akin.Wag mo kong kausapin Hindi ikaw yung tipong niloloko")
        partialLyricsTagalog.append("O pare ko, meron akong problema O pare ko, meron akong problema")
        lyricsnchordsTagalog.append(
                  "[Verse 1]\n"
                + "E\n"
                + "Am I real?\n"
                + "Bm\n"
                + "do the words I speak before you\n"
                + "E              Bm\n"
                + "make you feel,that the love\n"
                + "A\n"
                + "I have for you will see no ending?\n"
                + "Am\n"
                + "well if you look into my eyes\n"
                + "E\n"
                + "then you should know\n"
                + "Bm\n"
                + "that there is nothing here to doubt\n"
                + "E\n"
                + "nothing to fear\n"
                + "Bm\n"
                + "and you can lay your questions down\n"
                + "A\n"
                + "cause if you'll hold me\n"
                + "Am\n"
                + "we can fade into the night and you'll know\n"
                
                
                + "Chorus]\n"
                + "G        Em       Bm\n"
                + "the world could die\n"
                + "C        D   G\n"
                + "and everything may lie\n"
                + "Em       D  C, D\n"
                + "still you shan't cry\n"
                + "G       Em      Bm\n"
                + "coz time may pass\n"
                + "C            G\n"
                + "but longer It'll last\n"
                + "Em     D\n"
                + "I'll be by your side\n"
                
                
                + "[Instrumental]\n"
                + "E  C D\n"
                + "E  C D   E\n"
                
                
                + "[Chorus]\n"
                + "E\n"
                + "take my hand\n"
                + " Bm\n"
                + " and gently close your eyes\n"
                + "E\n"
                + "so you could understand\n"
                + "Bm\n"
                + "that there's no greater love tonight\n"
                + " A\n"
                + "that what I've for you\n"
                + "Am                              E\n"
                + "well If you feel the same way for me then let go\n"
                + "Bm                         E\n"
                + "we can journey to a garden no one knows\n"
                + "Bm                              A\n"
                + "life is short my darlin tell me that you love me\n"
                + "Am\n"
                + "o we can fade into the night and youll know\n"
                
                
                + "[Chorus]\n"
                + "G        Em       Bm\n"
                + "the world could die\n"
                + "C        D   G\n"
                + "and everything may lie\n"
                + "Em       D  C, D\n"
                + "still you shan't cry\n"
                + "G       Em      Bm\n"
                + "coz time may pass\n"
                + "C            G\n"
                + "but longer It'll last\n"
                + "Em     D\n"
                + "I'll be by your side\n"
                
                
                + "[Instrumental]\n"
                + "G   Em   Bm   C\n"
                + "G   Em   D    C\n"
                
                
                + "[Chorus]\n"
                + "G        Em       Bm\n"
                + "the world could die\n"
                + "C        D   G\n"
                + "and everything may lie\n"
                + "Em       D  C, D\n"
                + "still you shan't cry\n"
                + "G       Em      Bm\n"
                + "coz time may pass\n"
                + "C            G\n"
                + "but longer It'll last\n"
                + "Em      D\n"
                + "I'll be by your side\n"
                + "C\n"
                + "forever by your side\n"
                
                
                + "[Interlude]\n"
                + "G  Em  Bm  C  G  Em  D  C\n"
                + "G  Em  Bm  C  G  Em  D  C D\n"
                
                
                + "[Outro]\n"
                + "E C D\n"
                + "E C D E"
            )
        lyricsnchordsTagalog.append(
                  "GM7                  GM7\n"
                + "May isang umaga na tayo'y magsasama\n"
                + "CM7                 GM7\n"
                + "Haya at halina sa ala  paap\n"
                + "GM7          FM7 hold\n"
                + "O, anong sarap, haa....\n"
                
                
                + "[Verse]\n"
                
                + "G             Am7       Bm7 C\n"
                + "Hanggang sa dulo ng mundo,\n"
                + "Am7       Bm7 C\n"
                + "Hanggang maubos ang ubo;\n"
                + "G           Am7          Bm7 C\n"
                + "Hanggang gumulong ang luha,\n"
                + "G           Am7         Bm7 C\n"
                + "Hanggang mahulog ang tala.\n"
                
                + "[Chorus]\n"
                
                + "G              Am7        Bm7    C\n"
                + "Masdan mo ang aking mata, 'di mo ba nakikita?\n"
                + "G                   Am7        Bm7\n"        + "           C\n"
                + "(Ako ngayo'y/Ako'y) lumilipad at nasa (langit/alapaap) na\n"
                + "D   C\n"
                + "Gusto mo bang sumama?\n"
                
                
                + "[Verse]\n"
                + "G             Am7       Bm7           C\n"
                + "Hindi mo na kailangan ang magtago't mahiya\n"
                + "G             Am7          Bm7        C\n"
                + "Hindi mo na kailangan ang humanap ng iba\n"
                
                
                + "[Chorus]\n"
                + "G              Am7        Bm7    C\n"
                + "Kalimutan lang muna ang lahat ng problema\n"
                + "G                   Am7        Bm7        C\n"
                + "Huminga ka ng malalim at tayo'y lalarga na.\n"
                + "D   C\n"
                + "Handa na bang gumala?\n"
                
                
                + "[Interlude]\n"
                
                + "F G C Am F G A C#m D E\n"
                + "Pap pa rap pap pa pa rap pa.  ..\n"
                + "A C#m D E\n"
                + "Pa pa pa pa (papapa...)\n"
                + "C Bm C Bm C A/C# D\n"
                + "La la la....oooh hoo hoo...\n"
                
                
                + "[Verse]\n"
                + "G             Am7       Bm7           C\n"
                + "Ang daming bawal sa mundo (Ang daming bawal sa mundo)\n"
                + "G             Am7       Bm7           C\n"
                + "Sinasakal nila tayo (Sinasakal nila tayo)\n"
                + "G             Am7       Bm7           C\n"
                + "Buksan ang puso at isipan (Buksan ang puso at isipan)\n"
                + "G             Am7       Bm7           C\n"
                + "Paliparin ang kamalayan  (Paliparin)\n"
                
                
                + "[Chorus]\n"
                
                + "G              Am7        Bm7    C\n"
                + "Kalimutan lang muna ang lahat ng problema\n"
                + "G                   Am7        Bm7      C\n"
                + "Huminga ka ng malalim at tayo'y lalarga na.\n"
                
                
                + "[Outro]\n"
                
                + " D     C                D     C\n"
                + "Gusto mo bang...?  (Gusto mo bang...?)\n"
                + "D     C                D     C\n"
                + "Gusto mo bang...?  (Gusto mo bang...?)\n"
                + "D     C                D     C\n"
                + "Gusto mo bang...?  (Gusto mo bang...?)\n"
                + "D     C                D     C\n"
                + "Gusto mo bang...?  (Gusto mo bang...?)\n"
                
                + "D     C                D     C\n"
                + "Gusto mo bang...?  (Gusto mo bang...?)\n"
                + "D     C                D     C\n"
                + "Gusto mo bang...?  (Gusto mo bang...?)\n"
                + "D     C                D     C\n"
                + "Gusto mo bang...?  (Gusto mo bang...?)\n"
                + "D     C                D     C\n"
                + "Gusto mo bang...?  (Gusto mo bang...?)\n"
                
                + "GM7 GM7 hold\n"
                + "...Sumama?\n"

        )
        lyricsnchordsTagalog.append(
                  "D\n"
                + "kamusta ka na?\n"
                + "G                 D\n"
                + "Sana ikaw ay laging masaya\n"
                + "G\n"
                + "Kasamang mga kaibigan mo\n"
                + "Gm\n"
                + "Pakinggan mo ang sasabihin ko\n"
                
                
                + "D       D/C#\n"
                + "Aaminin ko\n"
                + "Bm        A\n"
                + "Sa lahat ng taong nandito\n"
                + "D      D/C#\n"
                + "Aaminin ko\n"
                + "Bm               A\n"
                + "Ikaw pa rin ang hinahanap ko\n"
                
                + "[Verse 2]\n"
                
                + "D\n"
                + "Tanda mo pa ba\n"
                + "G                       D\n"
                + "Mga panahong tayo ay laging magkasama\n"
                
                + "Puno ng ligaya\n"
                + "G                        Gm\n"
                + "Di ko naisip na bigla na lang nawala\n"
                
                + "Chorus\n"
                
                
                + "D       D/C#\n"
                + "Aaminin ko\n"
                + "Bm        A\n"
                + "Sa lahat ng taong nandito\n"
                + "D      D/C#\n"
                + "Aaminin ko\n"
                + "Bm                 A\n"
                + "Ikaw pa rin ang hinahanap ko\n"
                
                
                + "-ADLIB-\n"
                
                + "[Chorus]\n"
                
                
                + "D       D/C#\n"
                + "Aaminin ko\n"
                + "Bm        A\n"
                + "Sa lahat ng taong nandito\n"
                + "D      D/C#\n"
                + "Aaminin ko\n"
                + "Bm                  A\n"
                + "Ikaw pa rin ang hinahanap ko\n"
                
                + "(Repeat 3x)\n"
                
                
                
                + "D               D/C#\n"
                + " Ako'y biktima ng galit\n"
                + "Bm             A\n"
                + "Ako'y biktima ng pag-ibig\n"
                + "D       D/C#            Bm       A\n"
                + "Biktima na lang ba lagi sa mundong ito?"
        )
        lyricsnchordsTagalog.append(
                   "    [Verse]\n"
                
                + "E        B\n"
                + "Hoy hoy, Buloy\n"
                + "A        E                       B   A E\n"
                + "Naalala mo pa ba nung tayo'y nagsasama\n"
                + "E        B\n"
                + "Hoy hoy, Buloy\n"
                + "A        E                        B\n"
                + "Naalala mo pa ba ang iyong mga sinabi\n"
                + "A             E\n"
                + "Nung ako'y may problema\n"
                + "B                              A\n"
                + "Sabi mo, Lahat ng problema'y kayang lampasan\n"
                + "B                    A\n"
                + "Basta't tayo'y nagsasama at nag iinuman.\n"
                
                
                + "[Instrumental]\n"
                
                + "E B A E\n"
                
                + "E B A E\n"
                
                
                + "[Verse]\n"
                
                + "E        B\n"
                + "Hoy hoy, Buloy\n"
                + "A        E              E         B\n"
                + "Naalala mo pa ba nung ako ay ma kickout\n"
                + "A                  E\n"
                + "Kasi daw ako'y tanga (tanga)\n"
                + "E        B\n"
                + "Hoy hoy, Buloy\n"
                + "A        E                       B     A\n"
                + "Naalala mo pa ba nung ako ay napalayas\n"
                + "E\n"
                + "Ng aking ama't ina\n"
                + "B                              A\n"
                + "Mangiyak ngiyak na 'ko pero sabi mo ay OK lang yan\n"
                + "B                    A\n"
                + "Basta't tayo'y nagsasama at nag iinuman.\n"
                
                
                + "[Chorus]\n"
                
                + "E        B        C#m     B\n"
                + "Kaya naman ako bilib sa iyo\n"
                + "E        B       C#m     B\n"
                + "Kasi parang napakatibay mo\n"
                + "E          B         C#m         B\n"
                + "Lahat ng iharang ay kaya mong daanan\n"
                + "E            B           C#m  B                 (E)\n"
                + "Basta't mayrong bentang alak   diyan sa may tindahan.\n"
                
                
                + "[Instrumental]\n"
                
                + "E B A E  (2x)\n"
                
                + "B A      (2x)\n"
                
                
                + "[Verse]\n"
                
                + "E        B\n"
                + "Hoy hoy, Buloy\n"
                + "A        E              E         B\n"
                + "Naalala mo pa ba nung araw na nadedo\n"
                + "A        E\n"
                + "Ang aso mong si Morlock\n"
                + "E       B\n"
                + "Hoy hoy, Buloy\n"
                + "A              E                     B\n"
                + "Naalala mo pa ba nung ika'y tumawag sa 'min\n"
                + "A        E\n"
                + "At ika'y umiiyak.\n"
                
                
                + "[Bridge]\n"
                
                + "E            B      C#m          B\n"
                + "Tapos, pagkatapos non, kay tagal mong nawala\n"
                + "E             B            C#m     B\n"
                + "Nagulat na lang ako nung narinig ko ang balita\n"
                + "E            B      C#m          B\n"
                + "Akala ko pa naman na marunong kang magdala\n"
                + "E            B      C#m                  B\n"
                + "Nalaman ko na lang na ika'y nagpakamatay na.\n"
                
                
                + "[Verse]\n"
                + "E      B     A        E\n"
                + "Hoy Buloy, nasaan ka man\n"
                + "E             B         A                     E\n"
                + "Siguradong kawawa ka, malamang walang alak diyan\n"
                + "E      B     A        E\n"
                + "Hoy Buloy, nasaan ka man\n"
                + "E               B     A         E\n"
                + "Siguradong hindi ka namin malilimutan\n"
                + "E      B     A        E\n"
                + "Hoy Buloy, Buloy, Buloy.\n"
                
                + "E      B     A        E\n"
                + "Hoy Buloy, nasaan ka man\n"
                + "E             B         A                     E\n"
                + "Siguradong kawawa ka, malamang walang alak diyan\n"
                + "E      B     A        E\n"
                + "Hoy Buloy, nasaan ka man\n"
                + "E               B     A         E\n"
                + "Siguradong hindi ka namin malilimutan\n"
                + "E      B     A        E\n"
                + "Hoy Buloy, Buloy, Buloy.\n"
                
                
                + "[Outro]\n"
                
                + "E        B\n"
                + "Hoy hoy, Buloy\n"
                + "A            E\n"
                + "Para bang nalimot mo na\n"
                + "E         B           A           E\n"
                + "Ang iyong mga sinabi nung ikaw ay buhay pa\n"
                + " B\n"
                + "Hoy hoy, Buloy\n"
                + "A        E                       B   A E\n"
                + " Naalala mo pa ba nung tayo'y nagsasama\n"
                + "E        B\n"
                + "Hoy hoy, Buloy\n"
                + "A        E                        B\n"
                + "Naalala mo pa ba ang iyong mga sinabi\n"
                + "A             E\n"
                + "Nung ako'y may problema\n"
                + "B                              A\n"
                + "Sabi mo, Lahat ng problema'y kayang lampasan\n"
                + "B                    A\n"
                + "Basta't tayo'y nagsasama at nag iinuman.\n"
                + "[Verse]\n"
                + "[Chorus]\n"
                + "[Instrumental]\n"
                + "[Verse]\n"
                + "[Bridge]\n"
                + "[Outro]"
        )
        lyricsnchordsTagalog.append(
                  "Intro: C Em Am F\n"
                
                + "C             Em\n"
                + "Maari bang makausap ka?\n"
                + "Am   F\n"
                + "Di na biro ang nararamdaman\n"
                + "C   Em\n"
                + "Nalulungkot sa akin buhay\n"
                + "Am    F\n"
                + "Mula nang ika'y matauhan\n"
                
                + "Chorus:\n"
                
                + "C        Em\n"
                + "Patawarin mo ako sa aking nagawang\n"
                
                + "Am  F\n"
                + "Kasalanan, kasalanan (2x)\n"
                + "C  Em\n"
                + "Maari bang mapigilan pa\n"
                + "Am     F\n"
                + "Ang iyong di maaming binabalak\n"
                + "C   Em\n"
                + "Nakalimutan na ang pagsasama\n"
                + "Am     F\n"
                + "DI na ba kayang mapagbigyan\n"
                
                + "Chorus:\n"
                
                + "C           Em\n"
                + "Patawarin mo ako sa aking nagawang\n"
                + "Am   F\n"
                + "Kasalanan, kasalanan (3x)\n"
                
                
                + "Bridge:\n"
                
                + "F    G\n"
                + "Di na mauulit\n"
                
                
                + "F   G\n"
                + "Di na uulitin\n"
                
                + "Dm      G\n"
                + "Sana'y tanggapin mo\n"
                
                + "Chorus:\n"
                
                + "C    Em\n"
                + "Patawarin mo ako sa aking nagawang\n"
                
                + "Am   F\n"
                + "kasalanan, Kasalanan"
        )
        lyricsnchordsTagalog.append(
                  "+    [VERSE]\n"
                + "D    A    Bm      A\n"
                + "Umiiyak ka na naman\n"
                + "D          A          Bm          A\n"
                + "Langya talaga , wala ka bang ibang alam\n"
                + "D         A   Bm          A\n"
                + "Namumugtong mga mata\n"
                + "D       A         Bm           A\n"
                + "Kailan pa ba kaya ikaw magsasawa\n"
                
                
                + "[REFRAIN]\n"
                
                + "G             D            A\n"
                + " Sa problema na iyong pinapasan\n"
                + "G              D             Bm        A\n"
                + "Hatid sayo ng boyfriend mong hindi mo maintindihan\n"
                
                
                + " [VERSE]\n"
                
                + "D          A           Bm         A\n"
                + "May kwento kang pandrama na naman\n"
                
                + "Parang pang T V na wala ng katapusan\n"
                
                + "Hanggang kail an ka bang ganyan\n"
                
                + "Hindi mo ba alam na walang pupuntahan\n"
                
                
                + "[PRE-CHORUS]\n"
                
                + "G          D                  A\n"
                + "Ang pagtiyaga mo dyan sa boyfriend mong tanga\n"
                + "G          D        Bm         A\n"
                + "Na wala nang ginagawa kundi ang paluhain ka\n"
                
                
                + "[CHORUS]\n"
                
                + "D         G         Bm             A\n"
                + "Sa libu-libong pagkakataon na tayoy nag-kasama\n"
                + "D          G          Bm        A\n"
                + "Iilang ulit palang kitang nakitang masaya\n"
                + "D          G          Bm        A\n"
                + "Naiinis akong isipin na ginaganyan ka ya\n"
                + "D          G          Bm\n"
                + "Siguro ay hindi niya lang alam ang iyong\n"
                + "A           D\n"
                + "Tunay na halaga\n"

        )
        lyricsnchordsTagalog.append(
                  "    [Verse]\n"
                + "G     C              Bm  Esus E Am             Bm        A           D Dsus D\n"
                + "Uso pa ba ang harana              marahil ikaw ay nag tataka\n"
                + "G      C           Bm                    Esus E Am\n"
                + "sino ba tong mukang gago nag kandarapa\n"
                + "Bm               A    D Dsus D\n"
                + "sa pagkanta at nasisintunado sa kaba\n"
                + "G                C                   Bm  Esus E Am         Bm\n"
                + "meron pang dalang mga rosas                suot namay\n"
                + "A                D Dsus D\n"
                + "maong na kupas\n"
                + "G               C          Bm         Esus E Am\n"
                + "at nariyan pa ang barkada naka pormat naka barong\n"
                + "Bm                            A                           D Dsus D\n"
                + "sa awiting daig pa ang minus one at sing along\n"
                
                
                + "[Chorus]\n"
                
                + "CM7                             Bm\n"
                + "puno ang langit ng bitwin at kay lamig pa ng hangin\n"
                + "Am             D                   G      G7\n"
                + "sa iyong tingin akoy nababaliw giliw\n"
                + "CM7                          Bm\n"
                + "at sa awitin kong ito sanay maibigan mo\n"
                + "Am                D                     Esus E Am\n"
                + "ibubuhos ko ang buong puso ko sa isang\n"
                + "D D                G C (4X)\n"
                + "munting harana para sa iyo\n"
                
                
                + "[Verse]\n"
                
                + "G              C                Bm   E Esus AM            Bm             A      D Dsus D\n"
                + "hindi bat parang isang sine isang pelikulang romantiko\n"
                + "G               C                         Bm\n"
                + "hindi bat ikaw ang bidang artista\n"
                + "E-Esus-Am\n"
                + "at ako ang iyong leading man\n"
                + "Bm                     A                  D Dsus D\n"
                + "sa istoryang nagwawakas sa pag ibig na wagas\n"
                
                
                + "[Chorus]\n"
                
                + "CM7                               Bm\n"
                + "puno ang langit ng bitwin at kay lamig pa ng hangin\n"
                + "Am              D                G     G7\n"
                + "sa iyong tingin akoy nababaliw giliw\n"
                + "CM7                            Bm\n"
                + "at sa awitin kong ito sanay maibigan mo\n"
                + "Am                D              Esus E Am\n"
                + "ibubuhos ko ang buong puso ko  sa isang\n"
                + "D                          G C (4X)\n"
                + "munting harana para sa iyo"

        )
        lyricsnchordsTagalog.append(
                  "    [Verse 1]\n"
                
                + "G              C9\n"
                + "Natapos na ang lahat\n"
                + "G                  C9\n"
                + "Nandito pa rin ako\n"
                + "G                C9\n"
                + "Hetong nakatulala\n"
                + "Am        C\n"
                + "Sa mundo (Sa Mundo . . )\n"
                
                
                + "[Verse 2]\n"
                
                + "G                   C9\n"
                + "Hindi mo maiisip\n"
                + "G               C9\n"
                + "Hindi mo makikita\n"
                + "G               C9\n"
                + "Mga Pangarap ko\n"
                + "Am         C\n"
                + "Para sayo (Para sayo . .)\n"
                
                
                + "[Chorus]\n"
                
                + "G       C9\n"
                + "Oh . . . .\n"
                + "Am\n"
                + "Hindi ko maisip\n"
                + "C\n"
                + "Kung wala ka\n"
                + "G       C9\n"
                + "Oh . . . .\n"
                + "Am     C\n"
                + "Sa buhay ko\n"
                
                
                + "[Verse 3]\n"
                
                + "G             C9\n"
                + "Nariyan ka pa ba\n"
                + "G           C9\n"
                + "Hindi ka na matanaw\n"
                + "G               C9\n"
                + "Kung merong madaraanang\n"
                + "Am        C\n"
                + "Pasulong (Pasulong . .)\n"
                
                
                + "[Chorus]\n"
                
                + "G       C9\n"
                + "Oh . . . .\n"
                + "Am\n"
                + "Hindi ko maisip\n"
                + "C\n"
                + "Kung wala ka\n"
                + "G       C9\n"
                + "Oh . . . .\n"
                + "Am     C\n"
                + "Sa buhay ko\n"
                
                
                + "[Adlib]\n"
                
                + "G - C9 - G - C9 - Am - C\n"
                
                
                + "[Bridge]\n"
                
                + "G      C9      G\n"
                + "Sundan mo ang paghimig na lulan\n"
                + "C9                G\n"
                + "Na aking pinagtatanto\n"
                + "C9        Am           C\n"
                + "Sundan mo ang paghimig ko\n"
                
                
                + "[Chorus]\n"
                
                + "G       C9\n"
                + "Oh . . . .\n"
                + "Am\n"
                + "Hindi ko maisip\n"
                + "C\n"
                + "Kung wala ka\n"
                + "G       C9\n"
                + "Oh . . . .\n"
                + "Am     C\n"
                + "Sa buhay ko"
            

        )
        lyricsnchordsTagalog.append(
                "[Verse 1]\n"
                
                + "E\n"
                + "Lumayo kana sa akin\n"
                + "C#m\n"
                + "Wag mo kong kausapin\n"
                + "G#m\n"
                + "Parang awa mo na\n"
                + "A\n"
                + "Wag kang magpapaakit sakin\n"
                + "E\n"
                + "Ayoko lang masaktan ka\n"
                + "C#m\n"
                + "Malakas akong mambola\n"
                + "G#m            A\n"
                + "Hindi ako santo\n"
                
                
                + "[Chorus]\n"
                
                + "E-B-\n"
                + "Pero para sayo\n"
                + "C#m          G#m\n"
                + "Ako'y magbabago\n"
                + "A     E     C#m\n"
                + "Kahit mahirap\n"
                + "B\n"
                + "Kakayanin ko\n"
                
                + "E-B\n"
                + "Dahil para sayo\n"
                + "C#m           G#m\n"
                + "Handa akong magpakatino\n"
                + "A      E\n"
                + "Laging isipin\n"
                + "C#m       B\n"
                + "Lahat ay gagawin\n"
                + "E-C#m-G#m-A\n"
                + "Basta para sayo\n"
                
                
                + "[Verse 2]\n"
                
                + "E              C#m\n"
                + "Hindi ikaw yung tipong niloloko\n"
                + "A\n"
                + "At hindi naman ako yung tipong nagseseryoso\n"
                + "E           C#m\n"
                + "At kahit sulit sana sayo ang kasalanan\n"
                + "G#m                            A\n"
                + "Lolokohin lang kita kaya kung pwede wag nalang\n"
                + "E             C#m\n"
                + "Dahil ayoko nang masaktan ka\n"
                + "G#m\n"
                + "Wag kang maniniwala\n"
                + "Hindi ako santo\n"
                
                
                + "[Chorus]\n"
                
                + "E-B-\n"
                + "Pero para sayo\n"
                + "C#m          G#m\n"
                + "Ako'y magbabago\n"
                + "A     E     C#m\n"
                + "Kahit mahirap\n"
                + "B\n"
                + "Kakayanin ko\n"
                
                + "E-B\n"
                + "Dahil para sayo\n"
                + "C#m           G#m\n"
                + "Handa akong magpakatino\n"
                + "A      E\n"
                + "Laging isipin\n"
                + "C#m       B\n"
                + "Lahat ay gagawin\n"
                + "E-C#m-G#m-A\n"
                + "Basta para sayo\n"
                
                
                + "[Adlib]\n"
                
                + "E-C#m-G#m-A\n"
                + "E-C#m-G#m-A\n"
                
                
                + "[Verse 3]\n"
                
                + "E\n"
                + "Bakit nakikinig kapa\n"
                + "C#m\n"
                + "Matatapos na ang kanta\n"
                + "A\n"
                + "Pinapatakas na kita Mula nung una stanza\n"
                + "E\n"
                + "Hindi kaba natatakot\n"
                + "C#m            G#m\n"
                + "Baka ikaw ay masangkot\n"
                + "A\n"
                + "Sa mga kasalanan ko\n"
                
                
                + "[Chorus]\n"
                
                + "E-B\n"
                + "Pero para sayo\n"
                + "C#m          G#m\n"
                + "Ako'y magbabago\n"
                + "A     E     C#m\n"
                + "Kahit mahirap\n"
                + "B\n"
                + "Kakayanin ko\n"
                
                + "E-B\n"
                + "Dahil para sayo\n"
                + "C#m           G#m\n"
                + "Handa akong magpakatino\n"
                + "A      E\n"
                + "Laging isipin\n"
                + "C#m       B\n"
                + "Lahat ay gagawin\n"
                + "E-C#m-G#m-A\n"
                + "Basta para sayo\n"
                
                + "(repeat chorus except last line)"
        )
        lyricsnchordsTagalog.append(
            "Intro: G C x2\n"
                
                
                + "Verse 1:\n"
                + "G        C\n"
                + "Pare ko meron\n"
                + "akong problema\n"
                + "G\n"
                + "Wag mong sabihing\n"
                + "C  G\n"
                + "na naman In-lab\n"
                + "C\n"
                + "ako sa isang\n"
                + "G\n"
                + "kolehiyala Hindi\n"
                + "C\n"
                + "ko maintindihan\n"
                
                
                + "Refrain:\n"
                + "Am\n"
                + "Wag na nating idaan\n"
                + "C\n"
                + "Sa maboteng usapan\n"
                + "Am\n"
                + "Lalo lang madaragdagan\n"
                + "C\n"
                + "Ang sakit ng ulo\n"
                + "D\n"
                + "at bilbil sa tiyan\n"
                
                
                + "Verse 2:\n"
                + "G\n"
                + "Anong sarap\n"
                + "C\n"
                + "Kami'y naging\n"
                + "magkaibigan\n"
                + "G\n"
                + "Napuno ako\n"
                + "C\n"
                + "ng pagasa\n"
                + "G         C\n"
                + "Yun pala haggang\n"
                + "dun lang ang kaya\n"
                + "G                   C\n"
                + "Akala ko ay pwede pa\n"
                
                
                + "Refrain 2:\n"
                + "Am\n"
                + "Masakit mang\n"
                + "C\n"
                + "isipin Kailangang\n"
                + "tanggapin Kung\n"
                + "Am\n"
                + "kelan ka naging\n"
                + "C\n"
                + "seryoso Saka ka\n"
                + "D\n"
                + "niya gagaguhin\n"
                
                
                + "Chorus 1:\n"
                + "G         D Em\n"
                + "O Diyos ko  ano\n"
                + "C\n"
                + "ba naman ito\n"
                + "G           D\n"
                + "Di ba, walanghiya\n"
                + "Em          C\n"
                + "nagmukha akong\n"
                + "G\n"
                + "tanga Pinaasa\n"
                + "D\n"
                + "niya lang ako\n"
                + "Em\n"
                + "lecheng pagibig\n"
                + "C G      D Em\n"
                + "to Diyos ko  ano\n"
                + "C    G D Em C\n"
                + "ba naman ito\n"
                
                
                + "Guitar Solo:\n"
                + "G D Em C x2\n"
                
                
                + "Verse 3:\n"
                + "G          C\n"
                + "Sabi niya ayaw\n"
                + "niya munang\n"
                + "magkasyota\n"
                + "G\n"
                + "Dehins ako\n"
                + "C G\n"
                + "naniwala Di\n"
                + "C\n"
                + "nagtagal naging\n"
                + "ganun na rin ang\n"
                + "G\n"
                + "tema Kulang na\n"
                + "C\n"
                + "lang ay sagot niya\n"
                
                
                + "Refrain 3:\n"
                + "Am\n"
                + "Ba't ba ang\n"
                + "C\n"
                + "labo niya Di\n"
                + "ko maipinta\n"
                + "Am\n"
                + "Hanggang kelan\n"
                + "C\n"
                + "maghihintay Ako\n"
                + "D\n"
                + "ay naiinis na\n"
                
                
                + " Bridge:\n"
                + "Am C      G\n"
                + "Pero  minamahal ko\n"
                + "D     Am C\n"
                + "siya Di biro T.L.\n"
                + "G        D\n"
                + "ako sa kanya Alam\n"
                + "Am           C\n"
                + "kong nababaduyan\n"
                + "G\n"
                + "ka na sa mga\n"
                + "Em\n"
                + "sinasabi ko Pero\n"
                + "Am\n"
                + "sana naman ay\n"
                + "C            D\n"
                + "maintindihan mo\n"
                
                
                + "Verse 4:\n"
                + "G          C\n"
                + "O pare ko meron\n"
                + "ka bang maipapayo\n"
                + "G\n"
                + "Kung wala ay okey\n"
                + "C   G\n"
                + "lang Kailangan\n"
                + "C\n"
                + "lang ay ang iyong\n"
                + "G\n"
                + "pakikiramay Andito\n"
                + "C\n"
                + "ka ay ayos na\n"
                
                
                + "(Repeat Refrain 2)\n"
                + "(Repeat Chorus 1)"
            
        )
        
        isFavoriteTagalog.append(false)
        isFavoriteTagalog.append(false)
        isFavoriteTagalog.append(false)
        isFavoriteTagalog.append(false)
        isFavoriteTagalog.append(false)
        isFavoriteTagalog.append(false)
        isFavoriteTagalog.append(false)
        isFavoriteTagalog.append(false)
        isFavoriteTagalog.append(false)
        isFavoriteTagalog.append(false)
        
        isPlayTagalog.append(false)
        isPlayTagalog.append(false)
        isPlayTagalog.append(false)
        isPlayTagalog.append(false)
        isPlayTagalog.append(false)
        isPlayTagalog.append(false)
        isPlayTagalog.append(false)
        isPlayTagalog.append(false)
        isPlayTagalog.append(false)
        isPlayTagalog.append(false)

        //Ilokano
        titleSongsIlokano.append("Agbabaketak")
        titleSongsIlokano.append("Agpakada akon ayat ko")
        titleSongsIlokano.append("Agsubli Kadtoy Dennak")
        titleSongsIlokano.append("Isem")
        titleSongsIlokano.append("Biag Ti Tao")
        titleSongsIlokano.append("Basol Ko Kadi")
        titleSongsIlokano.append("Kukuam Amin Dayaw")
        titleSongsIlokano.append("Palubosan nak kadin")
        titleSongsIlokano.append("Parparbuk Laeng")
        titleSongsIlokano.append("Simple a kanta")
        artistSongsIlokano.append("Unkown")
        artistSongsIlokano.append("Unkown")
        artistSongsIlokano.append("Unkown")
        artistSongsIlokano.append("Unkown")
        artistSongsIlokano.append("Unkown")
        artistSongsIlokano.append("Unkown")
        artistSongsIlokano.append("Unkown")
        artistSongsIlokano.append("Unkown")
        artistSongsIlokano.append("Unkown")
        artistSongsIlokano.append("Unkown")
        partialLyricsIlokano.append("Adda innak nasaba Bumaket ngem nalapsat Inismak ket kimmidmat Nagtibbayo toy kaun gak")
        partialLyricsIlokano.append("Itan ti oras nga innak ipapanaw Dita sidong mo nga naka irwamak Diak kuma kayat a dumteng kastoy a gundaway")
        partialLyricsIlokano.append("Sipud pay pimmanaw ka Inbati nak nga agmaymaysa Inaldaw ken rabii a sapsapulen ka")
        partialLyricsIlokano.append("Isem Isem Isem ka man biag ko lawlawagam man to'y barukong ko, isut mangay ayoss")
        partialLyricsIlokano.append("Biag ti tao ditoy rabaw ti daga Naketgan a mabiit agpatengga")
        partialLyricsIlokano.append("Basol ko kadi? No lipaten kan kaongan toy pusok Basol ko kadi")
        partialLyricsIlokano.append("Kukuam amin dayaw Kinatan-ok Itag-ay mi ti puso mi Itag-ay mi ti puso mi")
        partialLyricsIlokano.append("Nasakit para kanyak no sikat  makitkitak Kadwam ni ayayatem a nangisukatam kanyak")
        partialLyricsIlokano.append("Ti naminsan a nagkita ta Dinamag ko no addan agayat kenka Ti sungbat mo ket Nalawag")
        partialLyricsIlokano.append("Simple laeng toy kantak para kenni ayayatek bareng no inna malagip")
        lyricsnchordsIlokano.append(
            "                  D\n"
                + "Adda innak nasabat\n"
                + "                  A\n"
                + "Bumaket ngem nalapsat\n"
                
                + "Inismak ket kimmidmat\n"
                + "                   D\n"
                + "Nagtibbayo toy kaun gak\n"
                + "                    D\n"
                + "No ti langa di met paudi\n"
                + "                   G\n"
                + "Ti pammagi na wow seksi\n"
                + "                    D\n"
                + "Agtawen san ti 60\n"
                + "       A                        D PAUSE\n"
                + "Lung ay na paylat makagargari\n"
                + "             D               A\n"
                + "Bumaket nga agpayso\n"
                + "                       D\n"
                + "Napigsa paylat inna babato\n"
                + "                 G         D\n"
                + "Makaalino ti patong na\n"
                + "          A        D PAUSE\n"
                + "Makaparugso paylat kinni na\n"
                
                + "            [Chorus]\n"
                + "              D       G\n"
                + "Agbabaketak\n"
                + "           A                 D\n"
                + "Isut kunkuna da kanyak\n"
                + "                    G\n"
                + "Uray man no uy uyawen dak\n"
                + "         A                   D\n"
                + "Di da met rikna toy mariknak\n"
                + "         D          G\n"
                + "Agbabaketak\n"
                + "       A                  D\n"
                + "Pudno nga agbabaketak\n"
                + "                G\n"
                + "Di da ngamin ammo ti ganas\n"
                
                + "         A                      D\n"
                + "Ti baket a kainnayan ayat\n"
                
                + "        D                   G\n"
                + "Agbabaketak\n"
                + "    A                  D\n"
                + "Pudno nga agbabaketak\n"
                + "    G\n"
                + "Di da ngamin ammo ti ganas\n"
                + "    A                D\n"
                + "Ti baket a kainnayan ayat\n"
                
                + "    [Verse 2] \n"
                + "D\n"
                + "Ti pumatol iti baket\n"
                + "A\n"
                + "Kas ka la addat langit\n"
                
                + "Awan sapulem ti kinasam it\n"
                + "    D\n"
                + "Arakup na ken innagek\n"
                
                + "Ti baket nasingsingpet\n"
                + "     G\n"
                + "Nabangbanglo awan mintis\n"
                + "    D\n"
                + "Uray no kuribetbet\n"
                + "    A                  D\n"
                + "Awan sapulem inna kinagaget\n"
                + "    D                       A\n"
                + "Dakkel a riro tay kunkunada\n"
                + "    D\n"
                + "Nga amoy lupa ti angot da\n"
                + "    G              D\n"
                + "Ti baket a karomansa\n"
                + "    A                D\n"
                + "Nagpaiduma ti ganas na\n"
                + "[Chorus] \n"
                + "    D       G\n"
                + "Agbabaketak\n"
                + "    A                 D\n"
                + "Isut kunkuna da kanyak\n"
                + "    G\n"
                + "Uray man no uy uyawen dak\n"
                + "    A                   D\n"
                + "Di da met rikna toy mariknak\n"
                + "    D          G\n"
                + "Agbabaketak\n"
                + "    A                  D\n"
                + "Pudno nga agbabaketak\n"
                + "        G\n"
                + "Di da ngamin ammo ti ganas\n"
                
                + "    A                      D\n"
                + "Ti baket a kainnayan ayat\n"
                
                + "    D                   G\n"
                + "Agbabaketak\n"
                + "    A                  D\n"
                + "Pudno nga agbabaketak\n"
                + "    G\n"
                + "Di da ngamin ammo ti ganas\n"
                + "    A                D\n"
                + "Ti baket a kainnayan ayat\n"
                
                + "[Instrumental] \n"
                + "    D G A (2X) \n"
                
                + "[Verse 2] \n"
                + "    D\n"
                + "Ti pumatol iti baket\n"
                + "    A\n"
                + "Kas ka la addat langit\n"
                
                + "Awan sapulem ti kinasam it\n"
                + "    D\n"
                + "Arakup na ken innagek\n"
                
                + "Ti baket nasingsingpet\n"
                + "    G\n"
                + "Nabangbanglo awan mintis\n"
                + "    D\n"
                + "Uray no kuribetbet\n"
                + "    A                  D\n"
                + "Awan sapulem inna kinagaget\n"
                + "    D                       A\n"
                + "Dakkel a riro tay kunkunada\n"
                + "    D\n"
                + "Nga amoy lupa ti angot da\n"
                + "    G              D\n"
                + "Ti baket a karomansa\n"
                + "    A                D\n"
                + "Nagpaiduma ti ganas na"

        )
        lyricsnchordsIlokano.append(
                 "C                      Dm\n"
                + "Itan ti oras nga innak ipapanaw\n"
                + "G                    C\n"
                + "Dita sidong mo nga naka irwamak\n"
                + "C7                  F\n"
                + "Diak kuma kayat a dumteng kastoy a gundaway\n"
                + "C              G              C\n"
                + "Dika agsangsangit agpakada akon ayat ko\n"
                
                + "C                            Dm\n"
                + "Diak kayat a makita nga lumlumdaang ka\n"
                + "G                    C\n"
                + "Ta ti ipapanaw ko lagip mo balunek\n"
                + "C7                F\n"
                + "Iti lugar a papanak siksikan to latta\n"
                + "C         G          C\n"
                + "Dikan agsangsangit agpakada akon ayat ko\n"
                
                + "Am            Dm\n"
                + "Kastan biag ko agsingsingpet kanto\n"
                + "G         C\n"
                + "No awanak ton dita sibay mo\n"
                + "F                E           Am\n"
                + "Sapay kuma ta naypaayan kat ragsak\n"
                + "Dm        E                Am\n"
                + "Umanay a lagipem inton kailiw nak 2x"

        )
        lyricsnchordsIlokano.append(
            "[Verse 1]\n"
                + "F                  Dm\n"
                + "Sipud pay pimmanaw ka\n"
                + "Bb              C\n"
                + "Inbati nak nga agmaymaysa\n"
                + "Bb         C              F\n"
                + "Inaldaw ken rabii a sapsapulen ka\n"
                + "F                Dm         Bb              C\n"
                + "Diak ammo man ti gapo na no apay nga nagpasugnod ka\n"
                + "Bb         C               F\n"
                + "Ket pimmanaw ka a dika pay nagpakada\n"
                
                + "[Chorus]\n"
                + "Bb                   C        Bb                Dm\n"
                + "Anya man ti naaramid ko sapay kuma ta mapakawan mo\n"
                + "Bb              C        Am             Bb\n"
                + "No agsubli kadtoy dennak ta mailiwak unay kenka\n"
                + "Bb  C             Bb           F\n"
                + "Ket toy pusok sika laeng ti sapsapulen naka\n"
                
                + "[Verse 2]\n"
                + "F              Dm\n"
                + "No adda ak nga agmaymaysa\n"
                + "Bb               C\n"
                + "Malmalday man daytoy rikna\n"
                + "Bb         C              F\n"
                + "Daydi aldaw a naglabas dida a sumina\n"
                + "F                 Dm         Bb        C\n"
                + "Daydi ki-naragsak ta isut natda a liwliwa\n"
                + "Bb                    C           F\n"
                + "A pangag-agas kudtoy inted mo a problema\n"
                
                + "F                      Dm\n"
                + "Ta awan man ti mabalin ko\n"
                + "Bb          C\n"
                + "Ta apay nga gimmura ka\n"
                + "Bb              C                 F\n"
                + "Ken mang namnaman ak pay laeng nga agsubli ka\n"
                
                + "[Chorus]\n"
                + "Bb                   C        Bb                Dm\n"
                + "Anya man ti naaramid ko sapay kuma ta mapakawan mo\n"
                + "Bb              C        Am             Bb\n"
                + "No agsubli kadtoy dennak ta mailiwak unay kenka\n"
                + "Bb  C             Bb           F\n"
                + "Ket toy pusok sika laeng ti sapsapulen naka\n"
                
                + "[Verse 3]\n"
                + "F                   Dm\n"
                + "Sadino man ti ayan mo ita\n"
                + "Bb               C\n"
                + "Sapay kuma ta dumdumngeg ka\n"
                + "Bb           C           F\n"
                + "Ditoy kansion nga idatdaton ko kenka\n"
                + "F                      Dm        Bb             C\n"
                + "Ta awan man ti mabalin ko no talaga nga gimmura ka\n"
                + "Bb             C                 F\n"
                + "Ngem mang namnama ak pay laeng nga agsubli ka\n"
                
                + "[Chorus]\n"
                + "Bb                   C        Bb                Dm\n"
                + "Anya man ti naaramid ko sapay kuma ta mapakawan mo\n"
                + "Bb              C        Am             Bb\n"
                + "No agsubli kadtoy dennak ta mailiwak unay kenka\n"
                + "Bb  C             Bb           F\n"
                + "Ket toy pusok sika laeng ti sapsapulen naka"

        )
        lyricsnchordsIlokano.append(
                  "[Intro]\n"
                + "F-Bb-F –C-F\n"
                
                + "[Verse]\n"
                + "F                                       C\n"
                + "Isem a pakabiagak agur-uray dagitoy matak\n"
                + "F\n"
                + "Ngem isu’t makaagas mangliwliwa toy kaunggak\n"
                
                + "Isem adu ti saw-en na\n"
                + "Bb\n"
                + "Adda isem a makagura\n"
                + "F\n"
                + "Adda isem a ray awen na ka\n"
                + "C                 F\n"
                + "Ken isem a pammagusto kenka\n"
                
                + "[Verse]\n"
                + "F\n"
                + "Uray adda amin kaniak a rigat\n"
                + "C\n"
                + "Uray pay no agpupungtotak\n"
                
                + "Uray pay no agpaspasugnodak\n"
                + "F\n"
                + "No is’mennak riknak mapagmayat\n"
                
                + "[Chorus]\n"
                + "F                            C\n"
                + "Isem isem umisem ka man biag ko\n"
                + "F\n"
                + "Lawlawagam man toy barukong ko\n"
                + "Bb\n"
                + "Tay isem mo isu’t mangay-ayo\n"
                + " F            C      F\n"
                + "Daytoy pusok napwan ti limdo\n"
                
                + "repeat I   repeat Chorus to fade"
        )
        lyricsnchordsIlokano.append(
                "Verse 1:\n"
                + "G                   D\n"
                + "Biag ti tao ditoy rabaw ti daga\n"
                + "E                    C\n"
                + "Naketgan a mabiit agpatengga\n"
                + "A                 D\n"
                + "Kasla angep a makita ti agsapa\n"
                + "G                   D\n"
                + "Ngem ti init sumingising lawag na\n"
                
                + "Verse 2:\n"
                + "G                         D\n"
                + "Ti angep ket agpukaw nga insigida\n"
                + "E                C\n"
                + "Di mapupuotan panagpukawda\n"
                + "A                  D\n"
                + "Kasla man ti biag tayo a pinarsuwa\n"
                + "G                   D\n"
                + "Biag tayo mabiit agpatengga\n"
                
                + "Chorus:\n"
                + "D                  C\n"
                + "Ket ala kamakamen tay kuma\n"
                + "Bm                F#m\n"
                + "Nga agtulnog apo a namarsua\n"
                + "A                   D\n"
                + "Natda nga oras kamakamen tay kuma\n"
                + "G                   C\n"
                + "Sakbay panawan tay ditoy daga"

        )
        lyricsnchordsIlokano.append(
                  "Am\n"
                + "Basol ko kadi?\n"
                + "Dm\n"
                + "No lipaten kan kaongan toy pusok\n"
                + "G\n"
                + "Basol ko kadi\n"
                + "C\n"
                + "No iwaksi kan ditoy panunut ko\n"
                
                + "Am\n"
                + "Diakon madaeran\n"
                + "Dm\n"
                + "Naipuris a saem let-ang barukong ko\n"
                + "F        Dm\n"
                + "A mang lemmes  manggudas\n"
                + "Em\n"
                + "Toy biag ko\n"
                
                + "Am\n"
                + "Awanen dayti ayat, a nangbalud\n"
                + "Dm\n"
                + "Nairut a kawar ni ayat\n"
                + "G\n"
                + "Kas man di ag kupas\n"
                + "C\n"
                + "i ragsak ken nasam-it a balikas\n"
                + "Am                            Dm\n"
                + "Namati ak kenka Ta natalged toy Puso ken riknak\n"
                + "F              Dm                  Em\n"
                + "gem gayam ubbaw ni ayat mo di mapagpyaran\n"
                
                + "Churos:\n"
                
                + "Am             Dm                         G\n"
                + "Awan  serserbi na ni ayat nga inka inparikna\n"
                + "C                    Am\n"
                + "nga innak tinagibi ti talek ken namnama\n"
                + "Dm                G\n"
                + "Nag sulbo nag bunga dagiti nga arapaap\n"
                + "C                  Am\n"
                + "nga inta minuli ti kari ken sapata\n"
                
                + "Am       Dm                  G\n"
                + "No siak to tay pumusay lagip monto laeng\n"
                + "                       Am\n"
                + "Mang biag ti naglabas naykupinen a kalman ta\n"
                + "Dm                  G\n"
                + "Naputar a kanta arbis a mangpasantak\n"
                + "Am\n"
                + "Ti nakeltay nga ayat..."

        )
        lyricsnchordsIlokano.append(
                 "VERSE 1:\n"
                + "D\n"
                + "Kukuam amin dayaw\n"
                + "Bm\n"
                + "Kinatan-ok\n"
                + "G\n"
                + "Itag-ay mi ti puso mi\n"
                + "A\n"
                + "Agdayaw nagan mo\n"
                
                
                
                + "CHORUS:\n"
                + "D\n"
                + "Natan-ok ka\n"
                + "Bm\n"
                + "Wen manakabalin ka\n"
                + "G\n"
                + "Awanen ti kas kenka\n"
                + "A\n"
                + "Awanen ti kas kenka\n"
                
                
                + "VERSE 2:\n"
                + "D\n"
                + "Kukuam amin dayaw\n"
                + "Bm\n"
                + "Kinatan-ok\n"
                + "G\n"
                + "Itag-ay mi ti puso mi\n"
                + "A\n"
                + "Agdayaw nagan mo"

        )
        lyricsnchordsIlokano.append(
                  "G                      D\n"
                + "Nasakit para kanyak no sikat  makitkitak\n"
                + "Am                  D\n"
                + "Kadwam ni ayayatem a nangisukatam kanyak\n"
                + "G\n"
                + "Panagkibkibin niyo a duwa\n"
                + "D\n"
                + "Madud-dudog datoy riknak\n"
                + "Am                      D\n"
                + "Agsasaiddek a puso diak lattan ikaskaso\n"
                + "G                    D\n"
                + "Nasaysayaat la kuman no di kan naam-ammu\n"
                + "Am                        D\n"
                + "Diak kuman nasaksaktan ta aramid mo\n"
                
                
                + "Chorus:\n"
                
                + "G                       D\n"
                + "Palubusan nak kadin nga umadayo\n"
                + "Am                   Em\n"
                + "Tapnun mapanunot mo, adu a basol mo\n"
                + "G                    D\n"
                + "Diak mariknan ti pammateg mo\n"
                + "Am               D\n"
                + "Nagbalbaliw kan, Limmamiis kan\n"
                + "Am                D               Am\n"
                + "Sapay ta maawatan nak ket palubusan nak\n"
                + "G     D         G\n"
                + "Awan, awanen ni ayat\n"
                
                + "G-D-Am-D\n"
                + "repeat verse1 & Chorus\n"
                
                + "G-D-Am-D"

        )
        lyricsnchordsIlokano.append(
                  "C                G\n"
                + "Ti naminsan a nagkita ta\n"
                + "F            G           C\n"
                + "Dinamag ko no addan agayat kenka\n"
                + "G\n"
                + "Ti sungbat mo ket Nalawag\n"
                + "F            G         C\n"
                + "Awan kunam nga ibaga kanyak...\n"
                
                + "CHUROS: C F G\n"
                
                + "C                   F\n"
                + "Nalawag a Parparbuk laeng ti songbat mo\n"
                + "C                  G\n"
                + "Ta nakitak a kakoykoyog mo\n"
                + "C                F\n"
                + "Nalawag a Parparbuk laeng ti sungbat mo\n"
                + "C                G\n"
                + "Ta nakitak a kakoykoyog mo\n"
                + "C   F-G-C\n"
                + "Ni ay-ayatem\n"
                
                + "C              G\n"
                + "Ti nasakit a kinunam\n"
                + "F             G        C\n"
                + "Awan bibyang ko ti pagduyosam\n"
                + "G\n"
                + "Awan gayam kay modingak\n"
                + "F           G               C\n"
                + "Parparbuk laeng gayam dayta ayat"
            
            
                + "Repeat I\n"
            
            
                + "Ni Ay Ayatem..."
            

        )
        lyricsnchordsIlokano.append(
            
                  "G\n"
                + "Simple laeng toy kantak\n"
                + "Am\n"
                + "para kenni ayayatek\n"
                + "D\n"
                + "bareng no inna malagip\n"
                + "G\n"
                + "sudi daytoy pammateg\n"
                
                + "G\n"
                + "My dearest love komusta ka\n"
                + "Am\n"
                + "Ammum kadi a kailiw ka\n"
                + "D\n"
                + "Kankanayon kad'toy panunot ko\n"
                + "G\n"
                + "Oh my love I Love You so ...\n"
                
                + "G\n"
                + "Simple laeng toy kantak\n"
                + "Am\n"
                + "Para kenni ayayatek\n"
                + "D\n"
                + "Bareng no inna malagip\n"
                + "G\n"
                + "Sudi daytoy pammateg ...\n"
                
                + "G\n"
                + "My dearest Love kumusta ka hAh..\n"
                + "Am\n"
                + "Ammum kadi a kailiw ka\n"
                + "D\n"
                + "kankanayon kad'toy panunot ko\n"
                + "G\n"
                + "Oh my love I Love You so ..\n"
                
                
                + "[ Timudek toy simple a kanta\n"
                + "    Nga isagot ko kenka't agnanayon\n"
                + "    Diak to pulos mauma\n"
                + "    Mangisawang nga ayayaten ka ] (2x)\n"
                
                + "[Repeat 1st & 2nd stanza]\n"
                
                + "G-Am-D\n"
                
                + "My dearest love kumusta ka\n"
                + "Ammum kadi a kailiw ka\n"
                + "Kankanayon kad'toy panunot ko\n"
                + "Oh My Love I Love You so ..\n"
                + "oh my love i love you so ..."

        )
        
        isFavoriteIlokano.append(false)
        isFavoriteIlokano.append(false)
        isFavoriteIlokano.append(false)
        isFavoriteIlokano.append(false)
        isFavoriteIlokano.append(false)
        isFavoriteIlokano.append(false)
        isFavoriteIlokano.append(false)
        isFavoriteIlokano.append(false)
        isFavoriteIlokano.append(false)
        isFavoriteIlokano.append(false)
        
        isPlayIlokano.append(false)
        isPlayIlokano.append(false)
        isPlayIlokano.append(false)
        isPlayIlokano.append(false)
        isPlayIlokano.append(false)
        isPlayIlokano.append(false)
        isPlayIlokano.append(false)
        isPlayIlokano.append(false)
        isPlayIlokano.append(false)
        isPlayIlokano.append(false)
        
        titleSongsPangasinan.append("Bibingka nen maria")
        titleSongsPangasinan.append("Inar-aro taka")
        titleSongsPangasinan.append("Inggon dumaralos")
        titleSongsPangasinan.append("Malabir Ka")
        titleSongsPangasinan.append("Malinak lay labi")
        titleSongsPangasinan.append("Matalag ya agew")
        titleSongsPangasinan.append("Oalay manoc con Tara")
        titleSongsPangasinan.append("Pangasinan Hymn")
        titleSongsPangasinan.append("Pangasinan")
        titleSongsPangasinan.append("Ponsiyano")
  
        artistSongsPangasinan.append("Insiyong")
        artistSongsPangasinan.append("Asin")
        artistSongsPangasinan.append("Insiyong")
        artistSongsPangasinan.append("Insiyong")
        artistSongsPangasinan.append("Asin")
        artistSongsPangasinan.append("Insiyong")
        artistSongsPangasinan.append("Asin")
        artistSongsPangasinan.append("Insiyong")
        artistSongsPangasinan.append("Insiyong")
        artistSongsPangasinan.append("Insiyong")
        partialLyricsPangasinan.append("bibingka nen maria so magata masasamit ya miryenda")
        partialLyricsPangasinan.append("Nanlapo nen saman Ya angga ed natan Say panangarok ed sika")
        partialLyricsPangasinan.append("Si Inggon dumaralos No unla layan undalos Duweg to'y mabetbet ya nabulos Unsempet ed abong da labos")
        partialLyricsPangasinan.append("Malabir ka Matalangatang ka Singa ka aderal ya plaka Beklew mo'y manulat ulat la")
        partialLyricsPangasinan.append("Malinak la'y labi oras la'y mareen Mapalpalna'y dagem katekep to'y linaew Samit da'y kugip ko binangonan kon tampol")
        partialLyricsPangasinan.append("Matalag ya agew Matalag ya simba Matalag ya tiempo'y Pakapantuyaw ta")
        partialLyricsPangasinan.append("Oalay manoc con Taraz Taraz, cuan cod Taraz ")
        partialLyricsPangasinan.append("Sekder ka tan dayew mi, Pangasinan ya pinabli")
        partialLyricsPangasinan.append("Abalayan gawen tay kanepegan Ta anak ta so mankaukulan")
        partialLyricsPangasinan.append("Ponsiyano Mabetbet et ponsya Pamilyay toy kaiba Sika ray masisiba")

        lyricsnchordsPangasinan.append(
            //BIBINGKA NEN MARIA
            //By:Insiyong
            "bibingka nen maria so magata\n"
            + "masasamit ya miryenda\n"
            + "laot la no walay mantikilya, ya mampabasa\n"
            + "no manggawa bibingka si maria\n"
            + "totoo lay pila-pila\n"
            + "si maria et banbantayan dala, ya mambibingka\n"
            + "si maria et mangilet no manggiling na ansakket\n"
            + "yurongan toy manateet gilingan toy manteglek\n"
            + "si maria et mangilet no manggiling na ansakket\n"
            + "say linget toy mammemgget, kanyan lalakiy mampelalek\n"
            + "bibingkan gawa toy malimlipek matibunek\n"
            + "si maria et mapili-pili balet\n"
            + "no karawen da maoganget, say aru toy\n"
            + "walan isisiblet, panget-panget\n"
            + "masamit so bibingka nen maria laot la no\n"
            + "dlad tapew et nanmantikilya\n"
            + "maninamak no nasingob ko la, siak med lad satay manilol la\n"
            + "pati totooy sansansakey la, mataldit dala\n"
            + "antoy agaway bibingka nen maria, aken ta net matabang la\n"
            + "anggapo la pati mantikilya, agla umbasa\n"
            + "amaga la..... mangkunat la....."
)
        
        lyricsnchordsPangasinan.append(
            //"INAR-ARO TAKA"
            
            "Nanlapo nen saman\n"
            + "Ya angga ed natan\n"
            + "Say panangarok ed sika\n"
            + "Et agni angoman\n"
            + "Ilaloan mo ya anggad-angga\n"
            + "Ayan panangaro ag\n"
            + "Onsawa ed sika\n"
            + "Say imis ed aping mo\n"
            + "No naneneng-neng ko\n"
            + "Say kesaw tan erap\n"
            + "Et nalilingwanan ko\n"
            + "No manatar tan dwa\n"
            + "Say limam et\n"
            + "Bembem-benan ko ya\n"
            + "Manisia kad syak\n"
            + "Inar-aro taka\n"
            + "Diad irap tan inawa\n"
            + "Sika so kaiba\n"
            + "No maugip ed labi\n"
            + "Kabangon ko wadtan ka\n"
            + "Antoni'y anapen\n"
            + "Amin walalad sika\n"
            + "Bukbukor mo'y aruen ko ed\n"
            + "Sayan bilay\n"
            + "Say imis ed aping\n"
            + "Mo no naneneng-neng ko\n"
            + "Say kesaw tan erap\n"
            + "Et nalilingwanan ko\n"
            + "No manakar tan dwa\n"
            + "Say limam et\n"
            + "Bembem-benan ko ya\n"
            + "Manisia kad siak\n"
            + "Inar-aro taka\n"
            + "INSTRUMENTAL\n"
            + "Say imis ed aping mo\n"
            + "No naneneng-neng ko\n"
            + "Say kesaw tan erap\n"
            + "Et nalilingwanan ko\n"
            + "No manakar tan dwa\n"
            + "say limam et\n"
            + "Bembem-benan ko ya\n"
            + "Manisia kad syak\n"
            + "Inar-aro taka\n"
            + "Manisia kad syak\n"
            + "Inar-aro taka\n"
            + "Manisia kad syak\n"
            + "Inar-aro taka\n"
            + "INTERLUDE\n"
            + "Manisia kad syak\n"
            + "Inar-aro taka\n"
            + "Manisia kad syak\n"
            + "Inar-aro taka"

        )
        lyricsnchordsPangasinan.append(
                //Inggon Dumalaros
                  "C\n"
                + "Dumaralos ya si Inggo\n"
                + "Samplura ni ra'y anak to\n"
                + "Tan natan et malukon\n"
                + "G\n"
                + "ni lamet si misis to\n"
                + "F\n"
                + "Masisiba ni ra'y anak to\n"
                + "Kulang day duwaran salop\n"
                + "C\n"
                + "ya niluto\n"
                + "G\n"
                + "Pakaskasi awawey nen Inggo\n"
                + "F\n"
                + "Itetepel ton naynay so eras to\n"
                + "C\n"
                + "Pati siraen ton tuyo, inbatik na aso\n"
                + "F#m\n"
                + "Si Inggon dumaralos\n"
                + "No unla layan undalos\n"
                + "G\n"
                + "Duweg to'y mabetbet ya nabulos\n"
                + "C\n"
                + "Si Inggo et maanos\n"
                + "Mangerel ni ya'y tamos\n"
                + "G\n"
                + "Karson silyo to lay manluslos\n"
                + "F                        C   F Dm\n"
                + "Unsempet ed abong da labos\n"
                + "C\n"
                + "Si Inggo et gumayugoy\n"
                + "Sankasakbat to so lukoy\n"
                + "G\n"
                + "Pati say tamos to et tauy-taoy\n"
                + "F\n"
                + "Manliket si misis to\n"
                + "Dinekkeman ton tampol so tamos\n"
                + "C\n"
                + "ya walad si Inggo\n"
                + "G\n"
                + "Manurangal ya maung si Inggo\n"
                + "F                         C\n"
                + "Mankelaw balet si akulaw to\n"
                + "F                         F#       G\n"
                + "Sananey manayan tamos so adekkeman to\n"
                
                + "C\n"
                + "Si Inggon dumaralos\n"
                + "No unla layan undalos\n"
                + "G\n"
                + "Duweg to'y mabetbet ya nabulos\n"
                + "C\n"
                + "Si Inggo et maanos\n"
                + "Mangerel ni ya'y tamos\n"
                + "G\n"
                + "Karson silyo to lay manluslos\n"
                + "F              C   F   Dm\n"
                + "Unsempet ed abong da labos\n"
                + "Repeat chorus"

        )
        lyricsnchordsPangasinan.append(
                  "A\n"
                + "Malabir ka\n"
                + "Matalangatang ka\n"
                + "E\n"
                + "Singa ka aderal ya plaka\n"
                + "Labi agew\n"
                + "Agla unsasawa\n"
                + "A\n"
                + "Beklew mo'y manulat ulat la\n"
                + "Kabangon mo'y kabwasan\n"
                + "Talos mo'y sugalan\n"
                + "E\n"
                + "Siyak tan anak mo'y ag ni angan\n"
                + "Unsempet kay ngarem\n"
                + "Lupam lay manlurem\n"
                + "A\n"
                + "Ta naupot ed tong-its so kwartam\n"
                + "Kasabik na labi\n"
                + "Singa ka bulasi\n"
                + "E\n"
                + "No unlimbwas et miti miti\n"
                + "Sermon ya sanlabi\n"
                + "Anggad alas syete\n"
                + "A\n"
                + "Bukel na matam lay unputi\n"
                
                + "Malabir ka\n"
                + "Matalangatang ka\n"
                + "E\n"
                + "Singa ka aderal ya plaka\n"
                + "Labi agew\n"
                + "Agla unsasawa\n"
                + "A\n"
                + "Beklew mo'y manulat ulat la\n"
                + "Balet no agew na sweldo\n"
                + "Anggapoy narengel ko\n"
                + "E\n"
                + "Sikay aliston unkarinyo\n"
                + "Imis moy anggad layag\n"
                + "Manlukso kan singa karag\n"
                + "A\n"
                + "Ya ngalngalin nabalintwag\n"
                + "No nayari\n"
                + "Agak la unsempet\n"
                + "E\n"
                + "No nasabi so mansilunget\n"
                + "Ta syak lay unkebet\n"
                + "Kirep mo'y nanabet\n"
                + "A\n"
                + "Pati angub mo'y ambange-banget\n"
                
                + "Malabir ka\n"
                + "Matalangatang ka\n"
                + "E\n"
                + "Singa ka aderal ya plaka\n"
                + "Labi agew\n"
                + "Agla unsasawa\n"
                + "A\n"
                + "Beklew moy manulat-ulat la\n"
                
                + "Malabir ka\n"
                + "Matalangatang ka\n"
                + "E\n"
                + "Singa ka aderal ya plaka\n"
                + "Labi agew\n"
                + "Agla unsasawa\n"
                + "A\n"
                + "Beklew moy manulat-ulat la\n"
                + "Repeat 2x"

        )
        lyricsnchordsPangasinan.append(
                  "Intro: G D A7 D\n"
                + "               D                 A7\n"
                + "Malinak la'y labi oras la'y mareen\n"
                + "               Em         A7         D A\n"
                + "Mapalpalna'y dagem katekep to'y linaew\n"
                + "                  D         D7          G\n"
                + "Samit da'y kugip ko binangonan kon tampol\n"
                + "                 D               A        D\n"
                + "Lapu'd say limgas mo sikan sika'y amamayoen\n"
                + "           A             A7         D\n"
                + "Lalo la bilay no sika la'y nanengneng\n"
                + "            A                     D\n"
                + "Napunas lan amin so ermen ya akbibiten\n"
                + "        A                A7         D\n"
                + "No nanonotan ko la'y samit day ugalim\n"
                + " G                  D            A        D\n"
                + "Ag ta ka nalingwanan angga'd kauyos na bilay\n"
                
                + "Outro: A D A7 Em A Dx2"
        )
        lyricsnchordsPangasinan.append(
                 "Matalag ya agew\n"
                + "Matalag ya simba\n"
                + "Matalag ya tiempo'y\n"
                + "Pakapantuyaw ta.\n"
                + "Nanilaloan mo la lagin\n"
                + "Anguman lay walnak\n"
                + "Mas lalon mandende'y\n"
                + "Panangarok ed sika.\n"
                + "Maminsa'd sanagew\n"
                + "Ya ag taka nanengneng\n"
                + "Sakiten toy ulok\n"
                + "Lupoken toy pukel.\n"
                + "Ganagana'y kanen ko\n"
                + "Mansiminto'd pagew\n"
                + "Inumen kon danum\n"
                + "Manbuknol ed beklew.\n"
                + "Neng mo pa inaro'y\n"
                + "Awawey ko natan\n"
                + "Laman ko'y mabeleng\n"
                + "Aliling ko'y patey.\n"
                + "No wala ni panangarom\n"
                + "Sambot mon sibegan\n"
                + "Ganagana'y remidyo\n"
                + "Walad sanduan limam."
        )
        lyricsnchordsPangasinan.append(
            //Oalay manoc con Tara
            
            "Oalay manoc con Taraz\n"
            + "Bagsit ya melamelag\n"
            + "Bagno manong-tungac\n"
            + "Siber, siber ed arap\n"
            
            + "Taraz, cuan cod Taraz\n"
            + "Antoy binarongan mod siac\n"
            + "Agtacamet benacbac\n"
            + "Denosan pinairap"
        )
        lyricsnchordsPangasinan.append(
            //PANGASINAN HYMN
            
            "Sekder ka tan dayew mi,\n"
            + "Pangasinan ya pinabli\n"
            + "Deen mo tan iyaliguas,\n"
            + "Piugagep ko lawas.\n"
            
            + "Diad pusok Pangasinan,\n"
            + "Agka Nalinguwanan\n"
            + "Luyag ko ya niyanakan,\n"
            + "Peteg takan yaman.\n"
            + "Refrain I\n"
            + "Matuwan aliguwas mo natay anengneng la\n"
            + "Pasimbaloy ginmapo la…\n"
            + "San pankakasakey natay nalilikna,\n"
            + "Lapud panamablid sika\n"
            + "Refrain II\n"
            + "Say dayat mon napnoy dakep tan say yaman,\n"
            + "Sekder na kapalandeyan…\n"
            + "Kareenan tan santing mo Pangasinan\n"
            + "Pablien tan lawas bantayan.\n"
            + "Refrain III\n"
            + "Lawas takan intanduro Pangasinan,\n"
            + "Aroen ka tan bayuboan…\n"
            + "Panangampupom ya walan abangonan,\n"
            + "Ikikinon kod siopa man…\n"
            + "Pangasinan luyag mi tan yaman"
        )
        lyricsnchordsPangasinan.append(
            //Pangasinan lyrics
            "1 pagatin\n"
            + "Abalayan gawen tay kanepegan\n"
            + "Ta anak ta so mankaukulan\n"
            + "Abeten abeten ko'y manugang ko\n"
            + "Sayawan sayawan koy kindu-kindu\n"
            + "Payurongen ko met lad satad abay ko\n"
            + "Pangipatnag koy tuwan panangaro\n"
            
            + "Balet say manunaan tan niyak\n"
            + "Sayan duaran puson manpakna\n"
            + "Malet kumon so aruan tan dua\n"
            + "Manlapulad natan ya anggad angga\n"
            + "Ta say duaran puson manlaktipan\n"
            + "Saksakey ira ed liknaan\n"
            + "Manaroan tan mantulungan\n"
            + "Mabulaslas iran tan duan bilay\n"
            
            + "Balet say manunaan tan dua\n"
            + "Sayan duaran puson manpakna\n"
            + "Malet kumon so aruan tan dua\n"
            + "Manlapulad natan ya anggad angga\n"
            + "Ta say duaran puson manlaktipan\n"
            + "Saksakey ira ed liknaan\n"
            + "Manaroan tan mantulungan\n"
            + "Mabulaslas iran tan duan bilay\n"
            + "abalayan gawen tay kanepegan\n"
            + "ta anak ta so mankaukulan."
        )
        lyricsnchordsPangasinan.append(
            //PONSIYANO
            //By:Insiyong
            "Ponsiyano Mabetbet et ponsya\n"
            + "Pamilyay toy kaiba Sika ray masisiba\n"
            + "Ponsiyano so tawag da\n"
            + "Iner man so ponsiyaan Sikaray minonaan\n"
            + "Upado lay lamesaan Alisto rat panangan\n"
            + "Ponsiyano pamilya ponsiyano agey lay inkabwakag yo\n"
            + "ponsiyano pamilya ponsiyano no panangan sikayoy alisto\n"
            + "inpanlaok toy kinan to rilleno tan adobo\n"
            + "letson enbotido egado tan putsiro\n"
            + "ginatan ya bayabas atsara apayas\n"
            + "inmilop ne sopas\n"
            + "si ponsiyanoy nan bawas\n"
            + "ponsiyano pamilya ponsiyano no panangan sikayoy alisto\n"
            + "bakas lumpos o lamay\n"
            + "pansit so nagaygay\n"
            + "pati kape tan tinapay\n"
            + "mamasnok lay bangkay laen da ya ponsya\n"
            + "anggad sira inbulsa tinidor o kutsara\n"
            + "esempet dat abong da\n"
            + "ponsiyano pamilya ponsiyano agay lay inkabwakag yo"
        )
        
        isFavoritePangasinan.append(false)
        isFavoritePangasinan.append(false)
        isFavoritePangasinan.append(false)
        isFavoritePangasinan.append(false)
        isFavoritePangasinan.append(false)
        isFavoritePangasinan.append(false)
        isFavoritePangasinan.append(false)
        isFavoritePangasinan.append(false)
        isFavoritePangasinan.append(false)
        isFavoritePangasinan.append(false)
        
        isPlayPangasinan.append(false)
        isPlayPangasinan.append(false)
        isPlayPangasinan.append(false)
        isPlayPangasinan.append(false)
        isPlayPangasinan.append(false)
        isPlayPangasinan.append(false)
        isPlayPangasinan.append(false)
        isPlayPangasinan.append(false)
        isPlayPangasinan.append(false)
        isPlayPangasinan.append(false)
    }
}













