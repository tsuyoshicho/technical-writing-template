RFC2223-JP.txt 2000/09/27 (initial version)
(C)JPNIC RFC-JP project, 2000. All rights reserved.




Network Working Group                                          J. Postel
Request for Comments: 2223                                   J. Reynolds
Obsoletes: 1543, 1111, 825                                           ISI
Category: Informational                                     October 1997


# RFCを書く人のために

## 本文書の状態（Status）

   本文書はインターネットコミュニティのための情報を提供している。
   本文書はいかなる種類のインターネット標準も定義していない。
   本文書の配布は制限されない。

## 著作権表示

   Copyright (C) The Internet Society (1997).  All Rights Reserved.

## 目次

   1. 導入 . . . . . . . . . . . . . . . . . . . . . . . . . . . .  2
   2. 編集方針 . . . . . . . . . . . . . . . . . . . . . . . . . .  3
   3. 形式に関する規則 . . . . . . . . . . . . . . . . . . . . . .  4
   3a. ASCII形式に関する規則  . . . . . . . . . . . . . . . . . . . 5
   3b. PostScript形式に関する規則 . . . . . . . . . . . . . . . . . 6
   4. ヘッダ . . . . . . . . . . . . . . . . . . . . . . . . . . .  7
   4a. 最初のページのヘッダ領域 . . . . . . . . . . . . . . . . . . 7
   4b. ランニング・ヘッダ . . . . . . . . . . . . . . . . . . . . . 8
   4c. ランニング・フッタ . . . . . . . . . . . . . . . . . . . . . 8
   5. 状態（Status）に関する節 . . . . . . . . . . . . . . . . . .  8
   6. 著作権表示 . . . . . . . . . . . . . . . . . . . . . . . . .  9
   7. 導入節 . . . . . . . . . . . . . . . . . . . . . . . . . . .  9
   8. 参考資料（Reference）に関する節  . . . . . . . . . . . . .   11
   9. 「セキュリティに関する考察」に関する節  . . . . . . . . . .  11
   10. 執筆者の連絡先（Author's Address）に関する節 . . . . . . .  11
   11. 著作権（Copyright）に関する節  . . . . . . . . . . . . . .  11
   12. 他のRFCとの関係  . . . . . . . . . . . . . . . . . . . . .  12
   13. プロトコル標準化過程（Protocol Standards Process） . . . .  13
   14. 連絡先 . . . . . . . . . . . . . . . . . . . . . . . . . .  13
   15. 配布リスト . . . . . . . . . . . . . . . . . . . . . . . .  14
   16. RFCインデックス  . . . . . . . . . . . . . . . . . . . . .  14
   17. セキュリティに関する考察 . . . . . . . . . . . . . . . . .  14
   18. 参考資料 . . . . . . . . . . . . . . . . . . . . . . . . .  14
   19. 執筆者の連絡先 . . . . . . . . . . . . . . . . . . . . . .  15
   20. 付録 ―― RFC「nroffマクロ」. . . . . . . . . . . . . . . . 16
   21. 完全な著作権表示 . . . . . . . . . . . . . . . . . . . . .  20

Postel & Reynolds            Informational                      [Page 1]

RFC 2223              Instructions to RFC Authors           October 1997

1.  導入

  本RFCは、RFC (Request for Comments) の準備に関する情報や、明確化され
  たRFCの公開に関する方針を提供している。

  RFCは広範囲に渡る対象を扱っている。主な内容はインターネットおよび
  TCP/IPプロトコルであるが、RFC編集者の判断によっては、計算機間の通信
  に関する内容ならどんなものでも扱うことができる。

  誰でも、RFCとして提案したい文章を提出してもよい。RFC原案の多くは、
  IETF（Internet Engineering Task Force）から提出される。IETF分科会
  (working group：WG) の研究活動が公開に値する成果を出した際には、研究
  活動の記録、つまりI-D (Internet Draft) を作成する。I-DはIESG
  (Internet Engineering Steering Group) で査読され、承認されたものが
  RFC編集者に送付される。

  IETF以外からRFC編集者に提出された原案の大半は、IESGによって、IETF分
  科会で進行中の活動と関係がないかどうかが検討される。

  RFCは、誰でもアクセスできるファイルとしてオンライン配布されている。
  また、新しいRFCが公開されたことを示す簡単なメッセージがメーリングリ
  ストに送付される。

  興味のある人は、オンラインのファイルを複製し、所有する機器を利用して、
  それぞれの場所で印刷や表示を行う。そのため、オンラインファイルの形式
  は、さまざまな種類の印刷・表示用機器で利用できるものでなければならな
  い。(RFCはまた、電子メールによる問い合わせに対して電子メールで返送さ
  れる、Gopher、Wais、WWW (World Wide Web) などの情報・データベース検
  索ツールを利用して検索される場合もある。)

   RFCは伝統的にASCIIテキストで公開されており、今後もASCIIテキストが利
  用され続けることになっている。

  RFCは、基本は常にASCIIテキストファイルである。それ以外のバージョンに
  関しては、PostScriptで提供してもよい(MAY)。これは、RFCに図表、図版な
  どを含めたい場合があるために規定されている。(紙の上のみの話ではある
  が) PostScript文書は、ASCIIテキスト文書よりも視覚的に訴える力が強く、
  また読みやすい。

  意匠を凝らした形式のRFCを実現するために、他の利用可能なシステム (例：
  impress、interpress、oda) ではなくPostScriptが選択されたのは、
  PostScript対応プリンタは広く行き渡っていると思われるからである。









Postel & Reynolds            Informational                      [Page 2]

RFC 2223              Instructions to RFC Authors           October 1997

  とはいえ、多くのRFC利用者はオンラインで文書を読み、さまざまなテキス
  ト指向ツール (例：emacs、grep) を利用してRFCを検索するし、電子メール
  にRFCからの短い引用が含まれる場合もある。PostScriptファイルでは、ま
  だこのような利用方法を取ることは難しい。

  また、PostScript生成システムは期待されるほどには一般的ではなく、
  PostScriptを生成すると主張している文書生成システムの中には、実際には
  標準的ではない結果を生成してしまうものもある。

  将来的には、妥当なPostScript形式のRFCを作成できる文書作成システム群
  を認定する必要があるだろう。


2.  編集方針

  RFCとして公開することを目指して提出される文書は、RFC編集者、および可
  能な場合はRFC編集者によって選ばれた査読者によって検討される。

  検討の結果として、公開される前に、執筆者に文書の改善が要求される場合
  がある。

  提出されたRFCの内容がIETF分科会の活動と重なってしまう場合があるが、
  その場合、RFCの著者は双方の利点を統合するためにIETF分科会と協調する
  ことができる。このような場合、改訂された文書がIETF分科会のI-Dとして
  新しく作成され、IESGからRFC編集者へIETF的に提出されることになる。提
  出された文書がRFCとして公開するには適さないと決定されることがありう
  る。

  その文書で扱っている内容に関する考察に基づいた声明を、文書内に含めな
  ければならないこともある。この処置が取られるのは、妥当ではあるが不適
  当もしくは安全ではないアイディアが文書中で提案されている場合などであ
  る。

  RFC編集者は文章に関するちょっとした変更を行ってもよい(MAY)。大半は、
  文章の書式や形式に関する変更だが、場合によっては文章自体を変更するこ
  ともある。本RFCで提示されている形式に関する規則に従っていない場合に
  は、大きな変更を行うこともある。しかし、追加作業を求めるために著作者
  に返還されることも多い。













Postel & Reynolds            Informational                      [Page 3]

RFC 2223              Instructions to RFC Authors           October 1997

  標準化過程プロトコルを定義するRFCとして公開が予定されている文書は、
  RFC編集者に送られる前に、必ずIESGに承認されなければならない(MUST)。
  IESGによる標準化過程に乗るRFCに対する作業が完了すると、IESG事務担当
  からRFC編集者に対して連絡が行くことになっている。通常はI-Dが検討対象
  となるので、連絡の際には、対象となっているI-Dが（ファイル名で）正確
  に引用されるのが一般的である。RFC編集者は、このようなファイルのみを
  RFC化の対象としなければならない(MUST)。テキストに対して小さな訂正が
  ある場合、それぞれの変更は個別に（もしくは“diff”として）RFC編集者
  に送付される。執筆者は修正された文書を送付すべきではない。

  執筆者は、PostScriptを利用して装飾された副次的な版となるRFCを用意し
  ている場合がある。ASCIIテキスト版がRFCの基本となる版であるため、
  PostScript版はASCII版と完全に一致していなければならない。RFC編集者は、
  PostScript版を公開する前に、PostScript版がASCII版と「同一である」と
  いう判断を下さなければならない(MUST)。

  したがって、RFC編集者は最初にRFCとして公開される文書のASCII版から処
  理を行う。ASCII版と同時にPostScript版を提出した場合（RFC編集者の同意
  が必要）、PostScript版もRFCレポジトリに格納され、その旨がコミュニティ
  に通知される。

  RFC編集スタッフにはさまざまな時間的制約があるため、提出から公開まで
  にかかる時間はまちまちである。また、RFC編集者に対し、（週に一度以下
  ならば）いつでも現在のRFCの状態を問い合わせてもよい。通常、IETF総会
  に先立つ2週間は非常に忙しいので、IETF総会の直前に提出されたRFCのほと
  んどはその後で公開されることになるだろう。


3.形式に関する規則

  配布上の制約があるため、RFCで利用が認められているASCIIおよび
  PostScript形式では、以下のような規則が適用される。

  RFCの書式はRFC編集者によって一貫性が保証される。そのため、RFC編集者
  は提出された文書を再編集することがある(MAY)。提出された文書が最近の
  RFCと同様な形式であれば簡単にことを済ますことができるので、最近のRFC
  をよく見て同様な書式になるようにしてほしい。

  RFC編集者へRFCを提出する際には、編集可能なオンライン文書でなければな
  らない(MUST)。RFC編集者は、形式もしくは書式に関する小さな修正を要求
  する場合もあるが、そうでない場合はその時点におけるRFC番号を補完する。










Postel & Reynolds            Informational                      [Page 4]

RFC 2223              Instructions to RFC Authors           October 1997

  ほとんどのRFCに対する、RFC編集者による処理はUNIXの“nroff”プログラ
  ムが利用される。組版指示は、msマクロ中から選択された非常に簡単な組版
  コマンド群（付録参照）が使用される。RFC化を前提として提出された文章
  が、執筆者側でもnroffで記述されている場合は、RFC編集者が文書の提出日
  時を知る際にとても便利である。

  3a.  ASCII形式に関する規則

    文字コードはASCIIである。

    各ページはフォームフィード（FF）文字を含む行で終端される58行以内で
    なければならない(MUST)。

    各行は復帰改行とラインフィード（CR＋LF）で終端される72文字以内でな
    ければならない(MUST)。

    重ね打ち（もしくは下線）を使ってはならない。

    これらの「行数」および「幅」に関する制限には、
    - ヘッダ
    - フッタ
    - ページ番号
    - 左側のインデント
    が含まれる。

    右余白がそろわなくなるので、テキストに余分な空白を入れてはならない。

    右余白での単語のハイフネーションをしてはならない。

    脚注を使ってはならない。注が必要な場合は、章の末尾もしくは文書の末
    尾に置くこと。

    段落内では単一の空白文字を使い、段落間には単一の空白行を使うこと。

    注：文書のページ数および各章のページ番号は形式の変更によって変化す
    る場合がある。そのため、通常は、章番号によるテキスト内の相互参照の
    ほうがページ番号による相互参照よりも一貫性を維持しやすい。

    ASCII形式のRFCは、完成した公開できる形式かnroffのいずれかの形式で、
    電子メールを使って（もしくはオンラインファイルとして）RFC編集者に
    提出できる(MAY)。文書をnroffで提出する予定ならば、まずRFC編集者に
    相談して頂たい。









Postel & Reynolds            Informational                      [Page 5]

RFC 2223              Instructions to RFC Authors           October 1997

  3b.PostScript形式に関する規則

    標準ページサイズは幅8.5インチ、高さ11インチである。

    周囲すべて（上下左右）に1インチの余白を取ること。

    本文は、行間が12ポイント、文字サイズが10ポイント以上にすべきである。

    脚注および図表の表記は、行間が9.6ポイント、文字サイズが8ポイント以
    上にすべきである。

    フォントは、Helvetica、Times Roman、Courierの3書体を利用できる。加
    えて、各フォントのボールド体およびイタリック体を利用できる。これら
    のフォントは、ほとんどのPostScriptプリンタにおける標準フォントであ
    る。

    最も低機能なPostScriptに基づいて、図表や画像を準備すること。また、
    一般的なPostScriptプリンタの機能と記憶容量を考慮すること。

    以下のPostScriptコマンドを利用すべきではない(SHOULD NOT)。
    initgraphics、erasepage、copypage、grestoreall、initmatrix、
    initclip、banddevice、framedevice、nulldevice、renderbands

    文書のページ数や各章のページ番号は、ASCII版とPostScript版で異なる
    場合がある。このため、ページ番号による相互参照よりも章番号を用いた
    相互参照のほうが一貫性を維持しやすい。

    これらのPostScriptに関する規則は、経験が積まれるにつれて変更、拡張
    されることがある。

    PostScript形式でのRFCは、電子メールで（もしくはオンラインファイル
    として）RFC編集者に提出できる(MAY)。文書をPostScriptで提出する予定
    ならば、まずRFC編集者に相談して頂たい。

    RFCはASCIIテキスト版が基本となる版であるため、PostScript版はASCII
    版と完全に一致していなければならない(MUST)。RFC編集者は、
    PostScript版を公開する前に、PostScript版がASCII版と「同一である」
    という判断を下さなければならない(MUST)。














Postel & Reynolds            Informational                      [Page 6]

RFC 2223              Instructions to RFC Authors           October 1997

4.ヘッダおよびフッタ

  ヘッダおよびフッタには、
    - 最初のページのヘッダ領域
    - ランニング・ヘッダ
    - ランニング・フッタ
  がある。

  4a.最初のページ

    最初のページのヘッダ領域の例として、本文書の最初のページを見ていた
    だきたい。最初のページにはランニング・ヘッダはない。最初のページの
    一番上には以下のような項目がある。

    「ネットワーク分科会（Network Working Group）」

    RFCを創始した分科会による伝統的ヘッダ。この項目はヘッダ領域の左側
    の1行目に置かれる。

    「RFC（Request for Comments）：nnnn」

    文書がRFCであることを示し、その番号を指定する。ヘッダ領域の左側の2
    行目に置かれる。実際の番号は、公開される直前にRFC編集者によって付
    けられる。

    「執筆者（Author）」

    執筆者の氏名（名前の頭文字と名字のみ）。ヘッダ領域の右側の1行目に
    置かれる。

    「組織（Organization）」

    執筆者の組織。ヘッダ領域の右側の2行目に置かれる。

    「日付（Date）」

    RFC公開の年月である。ヘッダ領域の右側の3行目に置かれる。

    「更新（Updates）もしくは置換（Obsoletes）」

    本RFCが別のRFCを更新（Updates）もしくは置換（Obsoletes）している場
    合、本項目がヘッダ領域の左側の3行目に置かれる。









Postel & Reynolds            Informational                      [Page 7]

RFC 2223              Instructions to RFC Authors           October 1997

    「種類（Category）」

    RFCの種類。以下のいずれかである。
    - 標準化過程（Standards Track）
    - 現時点における最良の方法（Best Current Practice）
    - 情報（Informational）
    - 実験（Experimental）
    本項目は、ヘッダ領域の左側の3行目（更新や置換が指示されていない場
    合）、もしくは4行目に置かれる。

    「他の番号（Ohter Numbers）」

    FYI（関連情報：For Your Information）[4]、BCP（現時点における最良
    の方法）[5]、STD（標準）[6]などの、副次的なシリーズを含む他のRFC文
    書の番号。ヘッダ領域の左側に置かれる。

    「題名（Title）」

    題名は、文書中央、ヘッダ領域の一番下に置かれる。題名には句読点（ピ
    リオド、ドット）を使ってはならない。

    複数の執筆者がおり、複数の組織に所属している場合は、ヘッダ領域の右
    側に情報量に見合った追加の行を入れ、各著者を各組織に明確に対応させ
    る。

  4b.    ランニング・ヘッダ

    ランニング・ヘッダは（2ページ目以降のすべてのページに置かれる）1行
    で、左にRFC番号（RFC NNNN）を、中央に（できるだけ短くした）題名を
    右に日付（月 年）を置く。

  4c.ランニング・フッタ

    ランニング・フッタは（すべてのページに置かれる）1行で、左に執筆者
    の名字を、中央に種類を、右にページ番号（[Page N]）を置く。

5.状態（Status）に関する節

  各RFCの最初のページには、「本文書の状態（Status of this Memo）」節が
  なければならない(MUST)。「本文書の状態」節には
    （1）RFCの種類を記述する段落
    （2）配布についての声明
  についての記述が含まれる。

  この章の内容は、以下の4種類の声明のうちのひとつとなる。






Postel & Reynolds            Informational                      [Page 8]

RFC 2223              Instructions to RFC Authors           October 1997

  「標準化過程（Standards Track）」

      "This document specifies an Internet standards track protocol for
      the Internet community, and requests discussion and suggestions
      for improvements.  Please refer to the current edition of the
      "Internet Official Protocol Standards" (STD 1) for the
      standardization state and status of this protocol.  Distribution
      of this memo is unlimited."

      <抄訳>
      「本文書はインターネットコミュニティにおけるインターネット標準化
      過程プロトコルを定義している。本文書の内容を発展させるための議論
      および提案を求める。本プロトコルの標準化段階と状態については、最
      新版の『インターネット公式プロトコル標準』（STD 1）を参照してい
      ただきたい。本文書の配布は制限されない。」

  「現時点における最良の方法（Best Current Practice）」

      "This document specifies an Internet Best Current Practices for
      the Internet Community, and requests discussion and suggestions
      for improvements.  Distribution of this memo is unlimited."

      <抄訳>
      「本文書はインターネットコミュニティに対するインターネットの現時
      点での最良の方法を定義している。本文書の内容を発展させるための議
      論および提案を求める。本文書の配布は制限されない。」

  「実験（Experimental）」

      "This memo defines an Experimental Protocol for the Internet
      community.  This memo does not specify an Internet standard of any
      kind.  Discussion and suggestions for improvement are requested.
      Distribution of this memo is unlimited."

      <抄訳>
      「本文書はインターネットコミュニティに対する実験的プロトコルを定
      義している。本文書の内容を発展させるための議論および提案を求める。
      本文書の配布は制限されない。」

  「情報（Informational）」

      "This memo provides information for the Internet community.  This
      memo does not specify an Internet standard of any kind.
      Distribution of this memo is unlimited."

      <抄訳>

      「本文書はインターネットコミュニティに対する情報を提供している。
      本文書はいかなる種類のインターネット標準も定義していない。本文書
      の配布は制限されない。」

6.著作権表示（Copyright Notice）

  状態（Status）に関する節に続いて、
  “Copyright (C) The Internet Society (date).  All Rights Reserved.”
  という声明が置かれる。

  完全な声明については文章の末尾に置かれなければならない(MUST)。それに
  ついては11章を参照のこと。

7.導入節

  各RFCは、導入節において、（他の事柄との間の）そのRFCの動機について説
  明を行うべきである(SHOULD)。また、もし必要であるのなら、説明されてい
  るプロトコルの適用範囲について記述すべきである(SHOULD)。

  通常、この節は、I-Dのときからあった「要約（abstract）」節である。も
  し、該当するRFCがI-Dを経ていない場合は、可能性として以下を挙げること
  ができる。


Postel & Reynolds            Informational                      [Page 9]

RFC 2223              Instructions to RFC Authors           October 1997

  「プロトコル（Protocol）」

    本プロトコルは「なんたら」サービスを提供するためのプロトコルで
    あり、クライアントおよびホスト計算機上のサーバ間で利用される。
    一般的には、クライアントはワークステーションのホスト上にあり、
    サーバはメインフレームのホスト上にある。

  または、

    本プロトコルは「なんたら」サービスを提供するためのプロトコルで
    あり、端末サーバもしくはルータのような特定の目的のための要素と、
    監視ホスト間で利用される。

  「議論（Discussion）」

    本RFCの目的は、インターネットでのなんらかの問題における議論、
    および適用可能な解決手法に対して焦点を当てることである。本文書
    で提案される解決方法は、インターネットの標準としては意図されて
    はいない。むしろ、この問題に対する正しい解決に関するなんらかの
    合意が形成されることで、最終的に標準として採択されるきっかけと
    なることを望んでいる。

  「興味（Interest）」

    本RFCは、本RFCで行われている提案に対して意見を得るために、イン
    ターネットコミュニティの構成者に配布されている。ここでの論点は、
    インターネットの研究における問題には直接関係していないかもしれ
    ないが、多くの研究者や実装者にとって興味深いものだろう。

  「現状報告（Status Report）」

    本RFCは、インターネットコミュニティにおけるさまざまなプロジェ
    クトの現状を記録しておきたいという要望に対して、インターネット
    コミュニティの構成者に便宜を図るために公開される。ここに 含ま
    れる情報は、公開された時点における現状という意味では正確である
    が、それ以降に変更された可能性がある。それらの変更については今
    後に公開されるRFCで反映されるだろう。

  これらの文章については、一字一句同一である必要はないが、なんらかの形
  で「RFCの目的」を明確にしなければならない(MUST)。










Postel & Reynolds            Informational                     [Page 10]

RFC 2223              Instructions to RFC Authors           October 1997

8.参考資料（References）に関する節

  ほぼすべてのRFCにおいて他の文書が引用される。引用された参考文献は、
  RFCの最後のほうに記述される「参考資料（References）」に列挙される。
  参考資料の記述方式にはさまざまなものがあるが、RFCでも規定の記述方式
  が決まっているので、最近のRFCで使われている参考資料の書式に従って記
  述してほしい。STD番号が割り当てられているプロトコルを参照する場合に
  は、参照にSTD番号を併記しなければならない(MUST)。

  標準化過程にある文書の多くでは、いくつの単語が、仕様における要求を示
  すために使われている。BCP 14、RFC2119[3]では、これらの単語について、
  IETF文書で使われるべき解釈を定義している。


9.「セキュリティに関する考察（Security Considerations）」に関する節

  すべてのRFCは、文書の最後のほうで、そのRFCで主に扱われているプロトコ
  ルおよび手続きにおける、セキュリティに関して考察する節を設けなければ
  ならない(MUST)。


10.執筆者連絡先（Author's Address）に関する節

  各RFCの最後尾には、氏名、住所、電話番号（オプション：FAX番号）、イン
  ターネットの電子メールアドレスを含んだ、執筆者の連絡先を示す節を置か
  なければならない(MUST)。


11.著作権に関する節

  BCP 9、RFC2026[2]によれば、「以下の著作権表示およびその否認を、すべ
  てのISOC標準関連文書に含むべきである」とされている。以下の声明を、
  「完全な著作権表示（Full Copyright Statement）」としてRFCの最後のペー
  ジに置いたほうがよい(SHOULD)。

















Postel & Reynolds            Informational                     [Page 11]

RFC 2223              Instructions to RFC Authors           October 1997

     "Copyright (C) The Internet Society (date).  All Rights Reserved.

     This document and translations of it may be copied and furnished
     to others, and derivative works that comment on or otherwise
     explain it or assist in its implementation may be prepared, copied,
     published and distributed, in whole or in part, without
     restriction of any kind, provided that the above copyright notice
     and this paragraph are included on all such copies and derivative
     works.  However, this document itself may not be modified in any
     way, such as by removing the copyright notice or references to the
     Internet Society or other Internet organizations, except as needed
     for the purpose of developing Internet standards in which case the
     procedures for copyrights defined in the Internet Standards
     process must be followed, or as required to translate it into
     languages other than English.

     The limited permissions granted above are perpetual and will not
     be revoked by the Internet Society or its successors or assigns.

     This document and the information contained herein is provided on
     an "AS IS" basis and THE INTERNET SOCIETY AND THE INTERNET
     ENGINEERING TASK FORCE DISCLAIMS ALL WARRANTIES, EXPRESS OR
     IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF
     THE INFORMATION HEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED
     WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

     <抄訳>
     “Copyright (C) The Internet Society (date).  All Rights Reserved.”

     本文書、その翻訳の複製、他への提供は許可されている。また、本文書
     に論評や説明を加えたり、その実装を補助するものは、上記の著作権表
     示および本節を付加していれば、全体あるいは一部であってもいっさい
     の制約を課されることなく作成、複製、発表、配布できる。ただし、こ
     の文書自体に対して、著作権表示や、インターネット・ソサエティもし
     くは他のインターネット関連団体への参照を取り除くなどの変更を加え
     てはならない。インターネット標準化過程で定義されている著作権のた
     めの手続きに従って、インターネット標準を開発するために必要な場合
     や、RFCを英語以外の言語に翻訳する必要がある場合はその限りではない。

     上記の制限は永続的なものであり、インターネット・ソサエティもしく
     はその継承者や譲渡者によって取り消されることはない。

     本文書とここに含まれた情報は（無保証（AS IS））で提供され、インター
     ネット・ソサエティおよびIETFはすべての保証を明示的にも暗黙的にも
     行わない。そのなかには、この情報がいかなる権利も侵害していないと
     いう保証や、商用利用および特定目的における適合性への保証が含まれ
     る。


12. 他のRFCとの関係

  以前のRFCですでに議論されていた話題に対して情報を追加したり、以前の
  RFCを完全に置き換えるRFCがある。これらの場合を表現する用語として、
  「更新（Updates）」と「置換（Obsoletes）」がある。以前の文書を置換す
  る文書は独立しているが、単に以前の文書を更新する文書は独立していない。
  つまり、後者は、前に存在する文書に対して追加/挿入されるべき内容なの
  で、単体で有効なものではない。「取り替え（Supercedes）」や「置き換え
  （Replaces）」という用語は、すでに利用されていない。

  「更新（Updates）」

  以前の文書の補遺などの単独では利用できない新しい文書において、以前の
  文書を参照するために用いられる。新しく公開される文書は、
    - 補遺（addendum）
    - 別個に元の文書に追加される特別情報
  などの
    - 現在の文書を補う
    - 現在の文書に追加される部分
  ものである。

  「置換（Obsoletes）」

  当該文書によって置き換えられる以前の文書を参照するために用いられる。
  新しく公開される文書には、
    - 修正された情報
    - 同一の情報になんらかの新しい情報が加えられた総体
  のいずれかが含まれる。この文書は、過去の文書への参照以外については、
  量の多寡には関係なく単独で利用できる。

Postel & Reynolds            Informational                     [Page 12]

RFC 2223              Instructions to RFC Authors           October 1997

  例：

  割り当て番号に関するRFCについては、置換（Obsoletes）という用語を利用
  すべきである(SHOULD)。新しい文書が、実際には以前の情報が記された文章
  に新しい情報を反映させてあるだけだとしても、以前のRFCより現実に即し
  ているので、置き換えることになるからである。

  （RFC自体ではなく）RFCのリストもしくはRFCインデックス中では、以前の
  文書から新しい文書を指す場合に以下の言い回しが利用されることがある。

  「Obsoleted-by：～によって置換された」

  古い文書を置き換える文書について言及するために利用される。

  「Updated-by：～によって更新された」

  まだ利用されている文書に追加される新しい節に言及するために利用される。


13.    プロトコル標準化過程（Protocol Standards Process）

  プロトコル標準およびその公開についての完全な一覧については、現在の
  「Internet Official Protocol Standards（インターネット公式プロトコル
  標準）」（STD 1）文書[1]を見よ。

  確立されている手続きでは、IESGが標準化過程RFCとなる予定の文書の検討
  を完了すると、IESG事務担当からRFC編集者へ連絡が行くことになっている。
  一般的には、検討対象となる文書はI-D（Internet Draft）である。通常、
  対象となるI-Dが（ファイル名で）正確に引用されることで伝達される。RFC
  編集者は、RFCとして処理される文書としてこのようなファイルのみを受け
  取らなければならない(MUST)。執筆者がテキストに小さな訂正を加えたい場
  合は、訂正を、RFC編集者に個別に（もしくは“diff”として）送付すべき
  である(SHOULD)。文書の新版を送付してはならない。


14.    連絡先

  RFC編集者に連絡する場合は、

    rfc-editor@isi.edu

  へ電子メールを送付する。









Postel & Reynolds            Informational                     [Page 13]

RFC 2223              Instructions to RFC Authors           October 1997

15.    配布リスト

  RFCの告知は、以下のふたつのメーリングリストを通して配布されている。
    - IETF-Announceメーリングリスト
    - RFC-DISTメーリングリスト
  両方のメーリングリストに参加する必要はない。

  ietf-request@ietf.orgに電子メールを送ることで、IETF-Announceメーリン
  グリストに参加（もしくは脱退）できる。

  また、rfc-dist-request@isi.eduに電子メールを送ることで、RFC配布
  （RFC-DIST）メーリングリストに参加（もしくは脱退）できる。


16.    RFCインデックス

  RFCインデックスファイルを管理している組織は複数ある。一般的に、RFCイ
  ンデックスファイルのファイル名は「rfc-index.txt」である。あるサイト
  から複製されたこのようなファイルの内容が、他のサイトから複製されたも
  のとは同一でない場合もある。

17.    セキュリティに関する考察

  本RFCはセキュリティに関する議論を行っていない
  （しかし、9章は参照すること）。


18.    参考資料

  [1]  Postel, J., Editor, "Internet Official Protocol Standards
       （インターネット公式プロトコル標準）", STD 1, RFC 2200,
       June 1997.

  [2]  Bradner, S., "The Internet Standards Process -- Revision 3
       （インターネット標準の生成）", BCP 9, RFC 2026, October 1996.

  [3]  Bradner, S., "Key words for use in RFCs to Indicate Requirement
       Levels（要求レベルを表す際にRFCにおいて利用されるキーワード）",
       BCP 14, RFC 2119, March 1997.

  [4]  Malkin, G., and J. Reynolds, "F.Y.I. on F.Y.I Introduction to
       the F.Y.I. Notes（FYI文書へのFYI導入についてのFYI）", FYI 1,
       RFC 1150, March 1990.

  [5]  Postel, J., Li, T., and Y. Rekhter, "Best Current Practices
       （現時点での最良の方法）", BCP 1, RFC 1818, August 1995.

  [6]  Postel, J., Editor, "Introduction to the STD Notes（STD文書
       入門）", RFC 1311,March 1992.


Postel & Reynolds            Informational                     [Page 14]

RFC 2223              Instructions to RFC Authors           October 1997

19.   執筆者の連絡先

  Jon Postel
  USC/Information Sciences Institute
  4676 Admiralty Way
  Marina del Rey, CA  90292

  Phone: +1 310-822-1511
  Fax:   +1 310-823-6714
  EMail: Postel@ISI.EDU


  Joyce K. Reynolds
  USC/Information Sciences Institute
  4676 Admiralty Way
  Marina del Rey, CA  90292

  Phone: +1 310-822-1511
  Fax:   +1 310-823-6714
  EMail: jkrey@isi.edu































Postel & Reynolds            Informational                     [Page 15]

RFC 2223              Instructions to RFC Authors           October 1997

20.  付録 - RFC“nroff マクロ”

  採用しているのはnroffの機能のうちの非常に簡単なものだけである。ここ
  ではmsマクロを使っており、

    nroff -ms 入力ファイル > 出力ファイル

  のように利用する。しかし、nroffを利用して
    iページ目の最後の行
       ^L
    i+1ページ目の最初の行
  のように、
  ページ境界に余計なラインフィード（LF）文字を入れずにフォームフィード
  （FF）文字を挿入するための方法がなかったため、ちょっとしたperlスクリ
  プト（fix.pl）を書いて対策している。このコマンドは、

    nroff -ms 入力ファイル | fix.pl > 出力ファイル

  のように利用する。

  実際のperlスクリプトを以下に添付する。

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#! /local/bin/perl

# fix.pl  17-Nov-93  Craig Milo Rogers at USC/ISI
#
#       The style guide for RFCs calls for pages to be delimited by the
# sequence <last-non-blank-line><formfeed-line><first-non-blank-line>.
# Unfortunately, NROFF is reluctant to produce output that conforms to
# this convention.  This script fixes RFC-style documents by searching
# for the token "FORMFEED[Page", replacing "FORMFEED" with spaces,
# appending a formfeed line, and deleting white space up to the next
# non-white space character.
#
#       There is one difference between this script's output and that of
# the "fix.sh" and "pg" programs it replaces:  this script includes a
# newline after the formfeed after the last page in a file, whereas the
# earlier programs left a bare formfeed as the last character in the
# file.  To obtain bare formfeeds, uncomment the second substitution
# command below.  To strip the final formfeed, uncomment the third
# substitution command below.
#
#       This script is intended to run as a filter, as in:
#
# nroff -ms input-file | fix.pl > output-file
#
#       When porting this script, please observe the following points:
#
# 1)    ISI keeps perl in "/local/bin/perl";  your system may keep it

Postel & Reynolds            Informational                     [Page 16]

RFC 2223              Instructions to RFC Authors           October 1997

#       elsewhere.
# 2)    On systems with a CRLF end-of-line convention, the "\n"s below
#       may have to be replaced with "\r\n"s.

$* = 1;                                 # Enable multiline patterns.
undef $/;                               # Read whole files in a single
                                        # gulp.

while (<>) {                            # Read the entire input file.
    s/FORMFEED(\[Page\s+\d+\])\s+/        \1\n\f\n/g;
                                        # Rewrite the end-of-pages.
#    s/\f\n$/\f/;                       # Want bare formfeed at end?
#    s/\f\n$//;                         # Want no formfeed at end?
    print;                              # Print the resultant file.
}
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

【コメントが日本語の版】
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#! /local/bin/perl

# fix.pl  17-Nov-93  Craig Milo Rogers at USC/ISI
#
# RFC書式ガイドでは、ページ境界が<最後の非空行><フォームフィード行>
# <最初の非空行>となることを要求している。しかし、NROFFではこのよう
# な形式をうまく扱えない。本スクリプトは、"FORMFEED[Page"という
# トークンを探して、この中の"FORMFEED"部分を空白文字に置き換えて、
# フォームフィード行を追加し、その後に続く空白文字を空白文字以外の
# 文字がでてくるまで削除する。
#
# このスクリプトは、前に利用されていた"fix.sh"や"pg"プログラムと異な
# る部分が1点だけある。このスクリプトでは、ファイル中の最後のページ
# のフォームフィード文字の後に改行文字を入れるが、初期のプログラムは、
# ファイルの最後にフォームフィード文字だけを入れるようになっていた。
# フォームフィード文字だけを置くには、以下のコマンドの2行目の
# コメントを外せばよい。また、3行目のコメントを外せば、最後の
# フォームフィード文字を置かないようになる。
#
# このスクリプトは
#
#        nroff -ms 入力ファイル | fix.pl > 出力ファイル
#
# のようにフィルタとして利用される。
#
# 移植する場合には、以下の点に留意してほしい。
# 1) ISIでは"/usr/bin/perl"にperlが置かれている。
#    それぞれのシステムで場所が違うかもしれない。
# 2) 行末がCRLFになっているシステムでは、
#    以下の"\n"部分を"\r\n"に置きかえなければならないかもしれない。

$* = 1;                                 # 複数行にまたがるパターンに対応
undef $/;                               # ファイル全体を一気に読み込む

while (<>) {                            # ファイル全体を読み込む
    s/FORMFEED(\[Page\s+\d+\])\s+/        \1\n\f\n/g;
                                        # ページ終端の書き換え
#    s/\f\n$/\f/;                       # フォームフィードのみにしたい？
#    s/\f\n$//;                         # 最後のフォームフィードはいらない？
    print;                              # 結果を表示
}
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  このスクリプトは
    ftp://ftp.isi.edu/in-notes/rfc-editor/fix.pl
  から取得できる。

  RFCの書式を実現するために利用されるnroff機能の例を示すために、以下に
  文書のサンプルを示す。

Postel & Reynolds            Informational                     [Page 17]

RFC 2223              Instructions to RFC Authors           October 1997


.pl 10.0i
.po 0
.ll 7.2i
.lt 7.2i
.nr LL 7.2i
.nr LT 7.2i
.ds LF Waitzman
.ds RF PUTFFHERE[Page %]
.ds CF
.ds LH RFC 1149
.ds RH 1 April 1990
.ds CH IP Datagrams on Avian Carriers
.hy 0
.ad l
.in 0
Network Working Group                                        D. Waitzman
Request for Comments: 1149                                       BBN STC
#                                                           1 April 1990


.ce
A Standard for the Transmission of IP Datagrams on Avian Carriers

.ti 0
Status of this Memo

.fi
.in 3
This memo describes an experimental method for the encapsulation of IP
datagrams in avian carriers.  This specification is primarily useful
in Metropolitan Area Networks.  This is an experimental, not recommended
standard.  Distribution of this memo is unlimited.

.ti 0
Overview and Rational

Avian carriers can provide high delay, low throughput, and low
altitude service.  The connection topology is limited to a single
point-to-point path for each carrier, used with standard carriers, but
many carriers can be used without significant interference with each
other, outside of early spring.  This is because of the 3D ether space
available to the carriers, in contrast to the 1D ether used by
IEEE802.3.  The carriers have an intrinsic collision avoidance system,
which increases availability.  Unlike some network technologies, such
as packet radio, communication is not limited to line-of-sight
distance.  Connection oriented service is available in some cities,
usually based upon a central hub topology.




Postel & Reynolds            Informational                     [Page 18]

RFC 2223              Instructions to RFC Authors           October 1997


.ti 0
Frame Format

The IP datagram is printed, on a small scroll of paper, in
hexadecimal, with each octet separated by whitestuff and blackstuff.
The scroll of paper is wrapped around one leg of the avian carrier.
A band of duct tape is used to secure the datagram's edges.  The
bandwidth is limited to the leg length.  The MTU is variable, and
paradoxically, generally increases with increased carrier age.  A
typical MTU is 256 milligrams.  Some datagram padding may be needed.

Upon receipt, the duct tape is removed and the paper copy of the
datagram is optically scanned into a electronically transmittable
form.

.ti 0
Discussion

Multiple types of service can be provided with a prioritized pecking
order.  An additional property is built-in worm detection and
eradication.  Because IP only guarantees best effort delivery, loss of
a carrier can be tolerated.  With time, the carriers are
self-regenerating.  While broadcasting is not specified, storms can
cause data loss.  There is persistent delivery retry, until the
carrier drops.  Audit trails are automatically generated, and can
often be found on logs and cable trays.

.ti 0
Security Considerations

.in 3
Security is not generally a problem in normal operation, but special
measures must be taken (such as data encryption) when avian carriers
are used in a tactical environment.

.ti 0
Author's Address

.nf
David Waitzman
BBN Systems and Technologies Corporation
BBN Labs Division
10 Moulton Street
Cambridge, MA 02238

Phone: (617) 873-4323

EMail: dwaitzman@BBN.COM



Postel & Reynolds            Informational                     [Page 19]

RFC 2223              Instructions to RFC Authors           October 1997

21.  完全な著作権表示

   Copyright (C) The Internet Society (1997).  All Rights Reserved.

   This document and translations of it may be copied and furnished to
   others, and derivative works that comment on or otherwise explain it
   or assist in its implmentation may be prepared, copied, published and
   distributed, in whole or in part, without restriction of any kind,
   provided that the above copyright notice and this paragraph are
   included on all such copies and derivative works.  However, this
   document itself may not be modified in any way, such as by removing
   the copyright notice or references to the Internet Society or other
   Internet organizations, except as needed for the purpose of
   developing Internet standards in which case the procedures for
   copyrights defined in the Internet Standards process must be
   followed, or as required to translate it into languages other than
   English.

   The limited permissions granted above are perpetual and will not be
   revoked by the Internet Society or its successors or assigns.

   This document and the information contained herein is provided on an
   "AS IS" basis and THE INTERNET SOCIETY AND THE INTERNET ENGINEERING
   TASK FORCE DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING
   BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION
   HEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF
   MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE."

  完全な著作権表示（抄訳――正確な理解には本文を参照すること）
  Copyright (C) The Internet Society (1998).  All Rights Reserved.

  本文書とその翻訳は、複製および他に提供することができる。また、この文
  書に論評や説明を加えたり、その実装を補助するものは、上記の著作権表示
  およびこの節を付加していれば、全体あるいは一部であってもいっさいの制
  約を課されることなく作成、複製、発表、配布できる。ただし、この文書自
  体に対して、著作権表示やインターネット・ソサエティ、もしくは他のイン
  ターネット関連団体への参照を取り除くなどの変更を加えてはならない。イ
  ンターネット標準化過程で定義されている著作権のための手続きに従って、
  インターネット標準を開発するために必要な場合や、RFCを英語以外の言語
  に翻訳する必要がある場合はその限りではない。

  上記の制限は永続的なものであり、インターネット・ソサエティもしくはそ
  の継承者や譲渡者によって取り消されることはない。

  本文書とここに含まれた情報は（無保証（AS IS））で提供され、インター
  ネット・ソサエティおよびIETFはすべての保証を明示的にも暗黙的にも行わ
  ない。そのなかには、この情報がいかなる権利も侵害していないという保証
  や、商用利用および特定目的における適合性への保証が含まれる。



Postel & Reynolds            Informational                     [Page 20]

  RFC-JP日本語翻訳物の著作権に関する告知

  本文書は、インターネット技術の正しい普及と振興を目的として、社団法人
  日本ネットワークインフォメーションセンター(JPNIC)が行っているRFC翻訳
  プロジェクト(RFC-JP)の成果物である。rfc-copyright-storyに従い、
  RFC2220以降のものについては“Full Copyright Statement”を含め、
  RFC2219以前のものについては原著者の了解を得て翻訳している。これによ
  り作成された二次的著作物である本文書の著作権はJPNICが保持するが、こ
  の権利の設定は原文から新たな翻訳を作成し公開することを妨げるものでは
  ない。

  また、RFC-JPとしてこの文書に記載された情報の内容が正確であることに努
  めているが、正確性を含めいっさいの品質についてこれを保証するものでは
  ない。したがって、この文書に記載された情報に基づいて貴方あるいは貴組
  織がとられた行動によって引き起こされる結果に対して、JPNICは何ら保証
  を与えない。

  本文書は、本著作権表示を含めて改変しないことを条件に再配布を許可する。
  ただし日本語訳は固定ではなく、誤りの発見や正確性の向上のために必要に
  応じて適宜更新される可能性がある。常に最新の版を入手するようにしてい
  ただきたい。最新版は<URL:http://rfc-jp.nic.ad.jp/>から入手できる。

