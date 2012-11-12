;;; clojure-wy2.el --- Generated parser support file

;; Copyright (C) 

;; Author: Pierre Allix <pal@elan-pallix>
;; Created: 2012-11-12 17:12:03+0100
;; Keywords: syntax
;; X-RCS: $Id$

;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation, either version 3 of
;; the License, or (at your option) any later version.

;; This software is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; PLEASE DO NOT MANUALLY EDIT THIS FILE!  It is automatically
;; generated from the grammar file clojure2.wy.

;;; History:
;;

;;; Code:

(eval-when-compile (require 'semantic/bovine))

;;; Prologue
;;

;;; Declarations
;;
(defconst wisent-clojure-wy--keyword-table
  (semantic-lex-make-keyword-table
   '(("abstract" . ABSTRACT)
     ("assert" . ASSERT)
     ("boolean" . BOOLEAN)
     ("break" . BREAK)
     ("byte" . BYTE)
     ("case" . CASE)
     ("catch" . CATCH)
     ("char" . CHAR)
     ("class" . CLASS)
     ("const" . CONST)
     ("continue" . CONTINUE)
     ("default" . DEFAULT)
     ("do" . DO)
     ("double" . DOUBLE)
     ("else" . ELSE)
     ("enum" . ENUM)
     ("extends" . EXTENDS)
     ("final" . FINAL)
     ("finally" . FINALLY)
     ("float" . FLOAT)
     ("for" . FOR)
     ("goto" . GOTO)
     ("if" . IF)
     ("implements" . IMPLEMENTS)
     ("import" . IMPORT)
     ("instanceof" . INSTANCEOF)
     ("int" . INT)
     ("interface" . INTERFACE)
     ("long" . LONG)
     ("native" . NATIVE)
     ("new" . NEW)
     ("package" . PACKAGE)
     ("private" . PRIVATE)
     ("protected" . PROTECTED)
     ("public" . PUBLIC)
     ("return" . RETURN)
     ("short" . SHORT)
     ("static" . STATIC)
     ("strictfp" . STRICTFP)
     ("super" . SUPER)
     ("switch" . SWITCH)
     ("synchronized" . SYNCHRONIZED)
     ("this" . THIS)
     ("throw" . THROW)
     ("throws" . THROWS)
     ("transient" . TRANSIENT)
     ("try" . TRY)
     ("void" . VOID)
     ("volatile" . VOLATILE)
     ("while" . WHILE)
     ("@author" . _AUTHOR)
     ("@version" . _VERSION)
     ("@param" . _PARAM)
     ("@return" . _RETURN)
     ("@exception" . _EXCEPTION)
     ("@throws" . _THROWS)
     ("@see" . _SEE)
     ("@since" . _SINCE)
     ("@serial" . _SERIAL)
     ("@serialData" . _SERIALDATA)
     ("@serialField" . _SERIALFIELD)
     ("@deprecated" . _DEPRECATED))
   '(("@deprecated" javadoc
      (seq 12 usage
           (type function variable)
           opt t))
     ("@serialField" javadoc
      (seq 11 usage
           (variable)
           opt t))
     ("@serialData" javadoc
      (seq 10 usage
           (function)
           opt t))
     ("@serial" javadoc
      (seq 9 usage
           (variable)
           opt t))
     ("@since" javadoc
      (seq 8 usage
           (type function variable)
           opt t))
     ("@see" javadoc
      (seq 7 usage
           (type function variable)
           opt t with-ref t))
     ("@throws" javadoc
      (seq 6 usage
           (function)
           with-name t))
     ("@exception" javadoc
      (seq 5 usage
           (function)
           with-name t))
     ("@return" javadoc
      (seq 4 usage
           (function)))
     ("@param" javadoc
      (seq 3 usage
           (function)
           with-name t))
     ("@version" javadoc
      (seq 2 usage
           (type)))
     ("@author" javadoc
      (seq 1 usage
           (type)))
     ("while" summary "while (<expr>) <stmt> | do <stmt> while (<expr>);")
     ("volatile" summary "Field declaration modifier: volatile <type> <name> ...")
     ("void" summary "Method return type: void <name> ...")
     ("try" summary "try {<stmts>} [catch(<parm>) {<stmts>} ...] [finally {<stmts>}]")
     ("transient" summary "Field declaration modifier: transient <type> <name> ...")
     ("throws" summary "Method|Constructor declaration: throws <classType>, ...")
     ("throw" summary "throw <expr> ;")
     ("synchronized" summary "synchronized (<expr>) ... | Method decl. modifier: synchronized <type> <name> ...")
     ("switch" summary "switch(<expr>) {[case <const-expr>: <stmts> ...] [default: <stmts>]}")
     ("strictfp" summary "Declaration modifier: strictfp {class|interface|<type>} <name> ...")
     ("static" summary "Declaration modifier: static {class|interface|<type>} <name> ...")
     ("short" summary "Integral primitive type (-32768 to 32767)")
     ("return" summary "return [<expr>] ;")
     ("public" summary "Access level modifier: public {class|interface|<type>} <name> ...")
     ("protected" summary "Access level modifier: protected {class|interface|<type>} <name> ...")
     ("private" summary "Access level modifier: private {class|interface|<type>} <name> ...")
     ("package" summary "Package declaration: package <name>")
     ("native" summary "Method declaration modifier: native <type> <name> ...")
     ("long" summary "Integral primitive type (-9223372036854775808 to 9223372036854775807)")
     ("interface" summary "Interface declaration: interface <name>")
     ("int" summary "Integral primitive type (-2147483648 to 2147483647)")
     ("import" summary "Import package declarations: import <package>")
     ("implements" summary "Class SuperInterfaces declaration: implements <name> [, ...]")
     ("if" summary "if (<expr>) <stmt> [else <stmt>]")
     ("goto" summary "Unused reserved word")
     ("for" summary "for ([<init-expr>]; [<expr>]; [<update-expr>]) <stmt>")
     ("float" summary "Primitive floating-point type (single-precision 32-bit IEEE 754)")
     ("finally" summary "try {<stmts>} ... finally {<stmts>}")
     ("final" summary "Class|Member declaration modifier: final {class|<type>} <name> ...")
     ("extends" summary "SuperClass|SuperInterfaces declaration: extends <name> [, ...]")
     ("enum" summary "Enum declaration")
     ("else" summary "if (<expr>) <stmt> else <stmt>")
     ("double" summary "Primitive floating-point type (double-precision 64-bit IEEE 754)")
     ("do" summary "do <stmt> while (<expr>);")
     ("default" summary "switch(<expr>) { ... default: <stmts>}")
     ("continue" summary "continue [<label>] ;")
     ("const" summary "Unused reserved word")
     ("class" summary "Class declaration: class <name>")
     ("char" summary "Integral primitive type (' ' to '￿') (0 to 65535)")
     ("catch" summary "try {<stmts>} catch(<parm>) {<stmts>} ... ")
     ("case" summary "switch(<expr>) {case <const-expr>: <stmts> ... }")
     ("byte" summary "Integral primitive type (-128 to 127)")
     ("break" summary "break [<label>] ;")
     ("boolean" summary "Primitive logical quantity type (true or false)")
     ("assert" summary "Assertion statement: assert <expr> [,<expr> ...];")
     ("abstract" summary "Class|Method declaration modifier: abstract {class|<type>} <name> ...")))
  "Table of language keywords.")

(defconst wisent-clojure-wy--token-table
  (semantic-lex-make-type-table
   '(("number"
      (NUMBER_LITERAL))
     ("string"
      (STRING_LITERAL))
     ("symbol"
      (DEFN_MINUS . "\\`defn-\\'")
      (DEFN . "\\`defn\\'")
      (DEF . "\\`def\\'")
      (IDENTIFIER)
      (BOOLEAN_LITERAL . "\\`true\\'")
      (BOOLEAN_LITERAL . "\\`false\\'")
      (NULL_LITERAL . "\\`null\\'"))
     ("punctuation"
      (DISCARD_READER . "#_")
      (UNREADABLE_READER . "#<")
      (COMMENT_READER . "#!")
      (EVAL_READER . "#=")
      (FN_READER . "#(")
      (SET_READER . "#{")
      (VAR_READER . "#'")
      (META_READER . "#^")
      (AT . "@")
      (ELLIPSIS . "...")
      (COMP . "~")
      (OROR . "||")
      (OREQ . "|=")
      (OR . "|")
      (XOREQ . "^=")
      (XOR . "^")
      (QUESTION . "?")
      (URSHIFTEQ . ">>>=")
      (URSHIFT . ">>>")
      (RSHIFTEQ . ">>=")
      (RSHIFT . ">>")
      (GTEQ . ">=")
      (GT . ">")
      (EQEQ . "==")
      (EQ . "=")
      (LTEQ . "<=")
      (LSHIFTEQ . "<<=")
      (LSHIFT . "<<")
      (LT . "<")
      (SEMICOLON . ";")
      (COLON . ":")
      (DIVEQ . "/=")
      (DIV . "/")
      (DOT . ".")
      (MINUSEQ . "-=")
      (MINUSMINUS . "--")
      (MINUS . "-")
      (COMMA . ",")
      (PLUSEQ . "+=")
      (PLUSPLUS . "++")
      (PLUS . "+")
      (MULTEQ . "*=")
      (MULT . "*")
      (ANDEQ . "&=")
      (ANDAND . "&&")
      (AND . "&")
      (MODEQ . "%=")
      (MOD . "%")
      (NOTEQ . "!=")
      (NOT . "!"))
     ("close-paren"
      (RBRACK . "]")
      (RBRACE . "}")
      (RPAREN . ")"))
     ("open-paren"
      (LBRACK . "[")
      (LBRACE . "{")
      (LPAREN . "("))
     ("block"
      (BRACK_BLOCK . "(LBRACK RBRACK)")
      (BRACE_BLOCK . "(LBRACE RBRACE)")
      (PAREN_BLOCK . "(LPAREN RPAREN)")))
   '(("keyword" :declared t)
     ("number" :declared t)
     ("string" :declared t)
     ("symbol" :declared t)
     ("punctuation" :declared t)
     ("block" :declared t)))
  "Table of lexical tokens.")

(defconst wisent-clojure-wy--parse-table
  (progn
    (eval-when-compile
      (require 'semantic/wisent/comp))
    (wisent-compile-grammar
     '((PAREN_BLOCK BRACE_BLOCK BRACK_BLOCK LPAREN RPAREN LBRACE RBRACE LBRACK RBRACK NOT NOTEQ MOD MODEQ AND ANDAND ANDEQ MULT MULTEQ PLUS PLUSPLUS PLUSEQ COMMA MINUS MINUSMINUS MINUSEQ DOT DIV DIVEQ COLON SEMICOLON LT LSHIFT LSHIFTEQ LTEQ EQ EQEQ GT GTEQ RSHIFT RSHIFTEQ URSHIFT URSHIFTEQ QUESTION XOR XOREQ OR OREQ OROR COMP ELLIPSIS AT META_READER VAR_READER SET_READER FN_READER EVAL_READER COMMENT_READER UNREADABLE_READER DISCARD_READER NULL_LITERAL BOOLEAN_LITERAL IDENTIFIER DEF DEFN DEFN_MINUS STRING_LITERAL NUMBER_LITERAL ABSTRACT ASSERT BOOLEAN BREAK BYTE CASE CATCH CHAR CLASS CONST CONTINUE DEFAULT DO DOUBLE ELSE ENUM EXTENDS FINAL FINALLY FLOAT FOR GOTO IF IMPLEMENTS IMPORT INSTANCEOF INT INTERFACE LONG NATIVE NEW PACKAGE PRIVATE PROTECTED PUBLIC RETURN SHORT STATIC STRICTFP SUPER SWITCH SYNCHRONIZED THIS THROW THROWS TRANSIENT TRY VOID VOLATILE WHILE _AUTHOR _VERSION _PARAM _RETURN _EXCEPTION _THROWS _SEE _SINCE _SERIAL _SERIALDATA _SERIALFIELD _DEPRECATED)
       nil
       (sexpr
        ((PAREN_BLOCK)
         (semantic-parse-region
          (car $region1)
          (cdr $region1)
          'list 1)))
       (list
        ((DEF IDENTIFIER)
         (progn
           (message "generating id tag")
           (wisent-raw-tag
            (semantic-tag-new-variable $2 nil nil))))))
     '(sexpr list)))
  "Parser table.")

(defun wisent-clojure-wy--install-parser ()
  "Setup the Semantic Parser."
  (semantic-install-function-overrides
   '((parse-stream . wisent-parse-stream)))
  (setq semantic-parser-name "LALR"
        semantic--parse-table wisent-clojure-wy--parse-table
        semantic-debug-parser-source "clojure2.wy"
        semantic-flex-keywords-obarray wisent-clojure-wy--keyword-table
        semantic-lex-types-obarray wisent-clojure-wy--token-table)
  ;; Collect unmatched syntax lexical tokens
  (semantic-make-local-hook 'wisent-discarding-token-functions)
  (add-hook 'wisent-discarding-token-functions
            'wisent-collect-unmatched-syntax nil t))


;;; Analyzers
;;
(require 'semantic/lex)

(define-lex-block-type-analyzer wisent-clojure-wy--<block>-block-analyzer
  "block analyzer for <block> tokens."
  "\\s(\\|\\s)"
  '((("(" LPAREN PAREN_BLOCK)
     ("{" LBRACE BRACE_BLOCK)
     ("[" LBRACK BRACK_BLOCK))
    (")" RPAREN)
    ("}" RBRACE)
    ("]" RBRACK))
  )

(define-lex-regex-type-analyzer wisent-clojure-wy--<symbol>-regexp-analyzer
  "regexp analyzer for <symbol> tokens."
  "\\(\\sw\\|\\s_\\)+"
  '((DEFN_MINUS . "\\`defn-\\'")
    (DEFN . "\\`defn\\'")
    (DEF . "\\`def\\'")
    (BOOLEAN_LITERAL . "\\`true\\'")
    (BOOLEAN_LITERAL . "\\`false\\'")
    (NULL_LITERAL . "\\`null\\'"))
  'IDENTIFIER)

(define-lex-regex-type-analyzer wisent-clojure-wy--<number>-regexp-analyzer
  "regexp analyzer for <number> tokens."
  semantic-lex-number-expression
  nil
  'NUMBER_LITERAL)

(define-lex-string-type-analyzer wisent-clojure-wy--<punctuation>-string-analyzer
  "string analyzer for <punctuation> tokens."
  "\\(\\s.\\|\\s$\\|\\s'\\)+"
  '((DISCARD_READER . "#_")
    (UNREADABLE_READER . "#<")
    (COMMENT_READER . "#!")
    (EVAL_READER . "#=")
    (FN_READER . "#(")
    (SET_READER . "#{")
    (VAR_READER . "#'")
    (META_READER . "#^")
    (AT . "@")
    (ELLIPSIS . "...")
    (COMP . "~")
    (OROR . "||")
    (OREQ . "|=")
    (OR . "|")
    (XOREQ . "^=")
    (XOR . "^")
    (QUESTION . "?")
    (URSHIFTEQ . ">>>=")
    (URSHIFT . ">>>")
    (RSHIFTEQ . ">>=")
    (RSHIFT . ">>")
    (GTEQ . ">=")
    (GT . ">")
    (EQEQ . "==")
    (EQ . "=")
    (LTEQ . "<=")
    (LSHIFTEQ . "<<=")
    (LSHIFT . "<<")
    (LT . "<")
    (SEMICOLON . ";")
    (COLON . ":")
    (DIVEQ . "/=")
    (DIV . "/")
    (DOT . ".")
    (MINUSEQ . "-=")
    (MINUSMINUS . "--")
    (MINUS . "-")
    (COMMA . ",")
    (PLUSEQ . "+=")
    (PLUSPLUS . "++")
    (PLUS . "+")
    (MULTEQ . "*=")
    (MULT . "*")
    (ANDEQ . "&=")
    (ANDAND . "&&")
    (AND . "&")
    (MODEQ . "%=")
    (MOD . "%")
    (NOTEQ . "!=")
    (NOT . "!"))
  'punctuation)

(define-lex-sexp-type-analyzer wisent-clojure-wy--<string>-sexp-analyzer
  "sexp analyzer for <string> tokens."
  "\\s\""
  'STRING_LITERAL)

(define-lex-keyword-type-analyzer wisent-clojure-wy--<keyword>-keyword-analyzer
  "keyword analyzer for <keyword> tokens."
  "\\(\\sw\\|\\s_\\)+")


;;; Epilogue
;;
;; Define the lexer for this grammar
(define-lex wisent-clojure2-lexer
  "Lexical analyzer that handles Clojure buffers.
It ignores whitespaces, newlines and comments."
  semantic-lex-ignore-whitespace
  semantic-lex-ignore-newline
  semantic-lex-ignore-comments
  ;;;; Auto-generated analyzers.
  wisent-clojure-wy--<number>-regexp-analyzer
  wisent-clojure-wy--<string>-sexp-analyzer
  ;; Must detect keywords before other symbols
  wisent-clojure-wy--<keyword>-keyword-analyzer
  wisent-clojure-wy--<symbol>-regexp-analyzer
  wisent-clojure-wy--<punctuation>-string-analyzer
  wisent-clojure-wy--<block>-block-analyzer
  ;;;;
  semantic-lex-default-action)

(provide 'clojure-wy2)

;; We cannot require the corresponding Lisp implementation, since
;; this would lead to a recursion.  Thus we blindly assume that
;; everything's available there.

;; Local variables:
;; byte-compile-warnings: (not unresolved)
;; End:

;;; clojure-wy2.el ends here
