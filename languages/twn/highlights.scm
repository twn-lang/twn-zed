;; コメント
(comment) @comment

;; ラベル定義
(label_definition (identifier) @function)

;; 命令（キーワード）
(opcode_no_arg) @keyword
(opcode_with_arg) @keyword
(opcode_jump) @keyword.control

;; 数値
(number) @constant.numeric

;; ラベル参照（引数としての識別子）
(argument (identifier) @variable)
