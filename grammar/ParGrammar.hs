{-# OPTIONS_GHC -w #-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module ParGrammar where
import AbsGrammar
import LexGrammar
import ErrM
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

data HappyAbsSyn 
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn27 (Ident)
	| HappyAbsSyn28 (Integer)
	| HappyAbsSyn29 (Prog)
	| HappyAbsSyn30 ([Decl])
	| HappyAbsSyn31 (Expr)
	| HappyAbsSyn38 (PatExpr)
	| HappyAbsSyn39 ([PatExpr])
	| HappyAbsSyn40 ([Expr])
	| HappyAbsSyn41 (AddOp)
	| HappyAbsSyn42 (MulOp)
	| HappyAbsSyn43 (RelOp)
	| HappyAbsSyn44 (TypeSig)
	| HappyAbsSyn45 (Type)
	| HappyAbsSyn47 (Lit)
	| HappyAbsSyn48 (Pat)
	| HappyAbsSyn50 ([Pat])
	| HappyAbsSyn51 (Decl)
	| HappyAbsSyn52 ([Ident])

{- to allow type-synonyms as our monads (likely
 - with explicitly-specified bind and return)
 - in Haskell98, it seems that with
 - /type M a = .../, then /(HappyReduction M)/
 - is not allowed.  But Happy is a
 - code-generator that can just substitute it.
type HappyReduction m = 
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> m HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> m HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> m HappyAbsSyn
-}

action_0,
 action_1,
 action_2,
 action_3,
 action_4,
 action_5,
 action_6,
 action_7,
 action_8,
 action_9,
 action_10,
 action_11,
 action_12,
 action_13,
 action_14,
 action_15,
 action_16,
 action_17,
 action_18,
 action_19,
 action_20,
 action_21,
 action_22,
 action_23,
 action_24,
 action_25,
 action_26,
 action_27,
 action_28,
 action_29,
 action_30,
 action_31,
 action_32,
 action_33,
 action_34,
 action_35,
 action_36,
 action_37,
 action_38,
 action_39,
 action_40,
 action_41,
 action_42,
 action_43,
 action_44,
 action_45,
 action_46,
 action_47,
 action_48,
 action_49,
 action_50,
 action_51,
 action_52,
 action_53,
 action_54,
 action_55,
 action_56,
 action_57,
 action_58,
 action_59,
 action_60,
 action_61,
 action_62,
 action_63,
 action_64,
 action_65,
 action_66,
 action_67,
 action_68,
 action_69,
 action_70,
 action_71,
 action_72,
 action_73,
 action_74,
 action_75,
 action_76,
 action_77,
 action_78,
 action_79,
 action_80,
 action_81,
 action_82,
 action_83,
 action_84,
 action_85,
 action_86,
 action_87,
 action_88,
 action_89,
 action_90,
 action_91,
 action_92,
 action_93,
 action_94,
 action_95,
 action_96,
 action_97,
 action_98,
 action_99,
 action_100,
 action_101,
 action_102,
 action_103,
 action_104,
 action_105,
 action_106,
 action_107,
 action_108,
 action_109,
 action_110,
 action_111,
 action_112,
 action_113,
 action_114,
 action_115,
 action_116,
 action_117,
 action_118,
 action_119,
 action_120,
 action_121,
 action_122,
 action_123,
 action_124,
 action_125,
 action_126,
 action_127,
 action_128,
 action_129,
 action_130,
 action_131,
 action_132,
 action_133,
 action_134,
 action_135,
 action_136,
 action_137,
 action_138,
 action_139,
 action_140,
 action_141,
 action_142,
 action_143,
 action_144,
 action_145,
 action_146,
 action_147,
 action_148,
 action_149,
 action_150,
 action_151,
 action_152,
 action_153,
 action_154,
 action_155,
 action_156,
 action_157,
 action_158,
 action_159,
 action_160,
 action_161,
 action_162,
 action_163,
 action_164,
 action_165,
 action_166,
 action_167,
 action_168,
 action_169 :: () => Int -> ({-HappyReduction (Err) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Err) HappyAbsSyn)

happyReduce_24,
 happyReduce_25,
 happyReduce_26,
 happyReduce_27,
 happyReduce_28,
 happyReduce_29,
 happyReduce_30,
 happyReduce_31,
 happyReduce_32,
 happyReduce_33,
 happyReduce_34,
 happyReduce_35,
 happyReduce_36,
 happyReduce_37,
 happyReduce_38,
 happyReduce_39,
 happyReduce_40,
 happyReduce_41,
 happyReduce_42,
 happyReduce_43,
 happyReduce_44,
 happyReduce_45,
 happyReduce_46,
 happyReduce_47,
 happyReduce_48,
 happyReduce_49,
 happyReduce_50,
 happyReduce_51,
 happyReduce_52,
 happyReduce_53,
 happyReduce_54,
 happyReduce_55,
 happyReduce_56,
 happyReduce_57,
 happyReduce_58,
 happyReduce_59,
 happyReduce_60,
 happyReduce_61,
 happyReduce_62,
 happyReduce_63,
 happyReduce_64,
 happyReduce_65,
 happyReduce_66,
 happyReduce_67,
 happyReduce_68,
 happyReduce_69,
 happyReduce_70,
 happyReduce_71,
 happyReduce_72,
 happyReduce_73,
 happyReduce_74,
 happyReduce_75,
 happyReduce_76,
 happyReduce_77,
 happyReduce_78,
 happyReduce_79,
 happyReduce_80,
 happyReduce_81,
 happyReduce_82,
 happyReduce_83,
 happyReduce_84,
 happyReduce_85,
 happyReduce_86,
 happyReduce_87,
 happyReduce_88,
 happyReduce_89,
 happyReduce_90,
 happyReduce_91,
 happyReduce_92,
 happyReduce_93,
 happyReduce_94 :: () => ({-HappyReduction (Err) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Err) HappyAbsSyn)

action_0 (91) = happyShift action_25
action_0 (27) = happyGoto action_28
action_0 (29) = happyGoto action_104
action_0 (30) = happyGoto action_105
action_0 (44) = happyGoto action_29
action_0 (51) = happyGoto action_103
action_0 _ = happyFail

action_1 (91) = happyShift action_25
action_1 (27) = happyGoto action_28
action_1 (30) = happyGoto action_102
action_1 (44) = happyGoto action_29
action_1 (51) = happyGoto action_103
action_1 _ = happyFail

action_2 (53) = happyShift action_80
action_2 (56) = happyShift action_81
action_2 (61) = happyShift action_82
action_2 (75) = happyShift action_83
action_2 (77) = happyShift action_84
action_2 (78) = happyShift action_85
action_2 (79) = happyShift action_86
action_2 (80) = happyShift action_87
action_2 (83) = happyShift action_88
action_2 (85) = happyShift action_89
action_2 (87) = happyShift action_90
action_2 (91) = happyShift action_25
action_2 (92) = happyShift action_43
action_2 (27) = happyGoto action_70
action_2 (28) = happyGoto action_71
action_2 (31) = happyGoto action_101
action_2 (32) = happyGoto action_73
action_2 (33) = happyGoto action_74
action_2 (34) = happyGoto action_75
action_2 (35) = happyGoto action_76
action_2 (36) = happyGoto action_77
action_2 (37) = happyGoto action_78
action_2 _ = happyFail

action_3 (53) = happyShift action_80
action_3 (56) = happyShift action_81
action_3 (61) = happyShift action_82
action_3 (75) = happyShift action_83
action_3 (77) = happyShift action_84
action_3 (78) = happyShift action_85
action_3 (79) = happyShift action_86
action_3 (91) = happyShift action_25
action_3 (92) = happyShift action_43
action_3 (27) = happyGoto action_70
action_3 (28) = happyGoto action_71
action_3 (32) = happyGoto action_100
action_3 (33) = happyGoto action_74
action_3 (34) = happyGoto action_75
action_3 (35) = happyGoto action_76
action_3 (36) = happyGoto action_77
action_3 (37) = happyGoto action_78
action_3 _ = happyFail

action_4 (53) = happyShift action_80
action_4 (56) = happyShift action_81
action_4 (61) = happyShift action_82
action_4 (75) = happyShift action_83
action_4 (77) = happyShift action_84
action_4 (78) = happyShift action_85
action_4 (79) = happyShift action_86
action_4 (91) = happyShift action_25
action_4 (92) = happyShift action_43
action_4 (27) = happyGoto action_70
action_4 (28) = happyGoto action_71
action_4 (33) = happyGoto action_99
action_4 (34) = happyGoto action_75
action_4 (35) = happyGoto action_76
action_4 (36) = happyGoto action_77
action_4 (37) = happyGoto action_78
action_4 _ = happyFail

action_5 (53) = happyShift action_80
action_5 (56) = happyShift action_81
action_5 (61) = happyShift action_82
action_5 (75) = happyShift action_83
action_5 (77) = happyShift action_84
action_5 (78) = happyShift action_85
action_5 (79) = happyShift action_86
action_5 (91) = happyShift action_25
action_5 (92) = happyShift action_43
action_5 (27) = happyGoto action_70
action_5 (28) = happyGoto action_71
action_5 (34) = happyGoto action_98
action_5 (35) = happyGoto action_76
action_5 (36) = happyGoto action_77
action_5 (37) = happyGoto action_78
action_5 _ = happyFail

action_6 (53) = happyShift action_80
action_6 (56) = happyShift action_81
action_6 (61) = happyShift action_82
action_6 (75) = happyShift action_83
action_6 (77) = happyShift action_84
action_6 (78) = happyShift action_85
action_6 (79) = happyShift action_86
action_6 (91) = happyShift action_25
action_6 (92) = happyShift action_43
action_6 (27) = happyGoto action_70
action_6 (28) = happyGoto action_71
action_6 (35) = happyGoto action_97
action_6 (36) = happyGoto action_77
action_6 (37) = happyGoto action_78
action_6 _ = happyFail

action_7 (53) = happyShift action_80
action_7 (56) = happyShift action_81
action_7 (61) = happyShift action_82
action_7 (75) = happyShift action_83
action_7 (77) = happyShift action_84
action_7 (78) = happyShift action_85
action_7 (79) = happyShift action_86
action_7 (91) = happyShift action_25
action_7 (92) = happyShift action_43
action_7 (27) = happyGoto action_70
action_7 (28) = happyGoto action_71
action_7 (36) = happyGoto action_96
action_7 (37) = happyGoto action_78
action_7 _ = happyFail

action_8 (56) = happyShift action_81
action_8 (75) = happyShift action_83
action_8 (77) = happyShift action_84
action_8 (78) = happyShift action_85
action_8 (79) = happyShift action_86
action_8 (91) = happyShift action_25
action_8 (92) = happyShift action_43
action_8 (27) = happyGoto action_70
action_8 (28) = happyGoto action_71
action_8 (37) = happyGoto action_95
action_8 _ = happyFail

action_9 (56) = happyShift action_37
action_9 (75) = happyShift action_38
action_9 (77) = happyShift action_39
action_9 (78) = happyShift action_40
action_9 (79) = happyShift action_41
action_9 (82) = happyShift action_42
action_9 (91) = happyShift action_25
action_9 (92) = happyShift action_43
action_9 (27) = happyGoto action_31
action_9 (28) = happyGoto action_32
action_9 (38) = happyGoto action_94
action_9 (47) = happyGoto action_33
action_9 (48) = happyGoto action_34
action_9 (49) = happyGoto action_93
action_9 _ = happyFail

action_10 (56) = happyShift action_37
action_10 (75) = happyShift action_38
action_10 (77) = happyShift action_39
action_10 (78) = happyShift action_40
action_10 (79) = happyShift action_41
action_10 (82) = happyShift action_42
action_10 (91) = happyShift action_25
action_10 (92) = happyShift action_43
action_10 (27) = happyGoto action_31
action_10 (28) = happyGoto action_32
action_10 (38) = happyGoto action_91
action_10 (39) = happyGoto action_92
action_10 (47) = happyGoto action_33
action_10 (48) = happyGoto action_34
action_10 (49) = happyGoto action_93
action_10 _ = happyFail

action_11 (53) = happyShift action_80
action_11 (56) = happyShift action_81
action_11 (61) = happyShift action_82
action_11 (75) = happyShift action_83
action_11 (77) = happyShift action_84
action_11 (78) = happyShift action_85
action_11 (79) = happyShift action_86
action_11 (80) = happyShift action_87
action_11 (83) = happyShift action_88
action_11 (85) = happyShift action_89
action_11 (87) = happyShift action_90
action_11 (91) = happyShift action_25
action_11 (92) = happyShift action_43
action_11 (27) = happyGoto action_70
action_11 (28) = happyGoto action_71
action_11 (31) = happyGoto action_72
action_11 (32) = happyGoto action_73
action_11 (33) = happyGoto action_74
action_11 (34) = happyGoto action_75
action_11 (35) = happyGoto action_76
action_11 (36) = happyGoto action_77
action_11 (37) = happyGoto action_78
action_11 (40) = happyGoto action_79
action_11 _ = happyFail

action_12 (59) = happyShift action_68
action_12 (61) = happyShift action_69
action_12 (41) = happyGoto action_67
action_12 _ = happyFail

action_13 (54) = happyShift action_64
action_13 (58) = happyShift action_65
action_13 (63) = happyShift action_66
action_13 (42) = happyGoto action_63
action_13 _ = happyFail

action_14 (64) = happyShift action_57
action_14 (68) = happyShift action_58
action_14 (69) = happyShift action_59
action_14 (71) = happyShift action_60
action_14 (72) = happyShift action_61
action_14 (73) = happyShift action_62
action_14 (43) = happyGoto action_56
action_14 _ = happyFail

action_15 (91) = happyShift action_25
action_15 (27) = happyGoto action_54
action_15 (44) = happyGoto action_55
action_15 _ = happyFail

action_16 (56) = happyShift action_48
action_16 (74) = happyShift action_49
action_16 (76) = happyShift action_50
action_16 (78) = happyShift action_51
action_16 (45) = happyGoto action_52
action_16 (46) = happyGoto action_53
action_16 _ = happyFail

action_17 (56) = happyShift action_48
action_17 (74) = happyShift action_49
action_17 (76) = happyShift action_50
action_17 (78) = happyShift action_51
action_17 (46) = happyGoto action_47
action_17 _ = happyFail

action_18 (75) = happyShift action_38
action_18 (77) = happyShift action_39
action_18 (92) = happyShift action_43
action_18 (28) = happyGoto action_32
action_18 (47) = happyGoto action_46
action_18 _ = happyFail

action_19 (56) = happyShift action_37
action_19 (75) = happyShift action_38
action_19 (77) = happyShift action_39
action_19 (78) = happyShift action_40
action_19 (79) = happyShift action_41
action_19 (82) = happyShift action_42
action_19 (91) = happyShift action_25
action_19 (92) = happyShift action_43
action_19 (27) = happyGoto action_31
action_19 (28) = happyGoto action_32
action_19 (47) = happyGoto action_33
action_19 (48) = happyGoto action_45
action_19 _ = happyFail

action_20 (56) = happyShift action_37
action_20 (75) = happyShift action_38
action_20 (77) = happyShift action_39
action_20 (78) = happyShift action_40
action_20 (79) = happyShift action_41
action_20 (82) = happyShift action_42
action_20 (91) = happyShift action_25
action_20 (92) = happyShift action_43
action_20 (27) = happyGoto action_31
action_20 (28) = happyGoto action_32
action_20 (47) = happyGoto action_33
action_20 (48) = happyGoto action_34
action_20 (49) = happyGoto action_44
action_20 _ = happyFail

action_21 (56) = happyShift action_37
action_21 (75) = happyShift action_38
action_21 (77) = happyShift action_39
action_21 (78) = happyShift action_40
action_21 (79) = happyShift action_41
action_21 (82) = happyShift action_42
action_21 (91) = happyShift action_25
action_21 (92) = happyShift action_43
action_21 (27) = happyGoto action_31
action_21 (28) = happyGoto action_32
action_21 (47) = happyGoto action_33
action_21 (48) = happyGoto action_34
action_21 (49) = happyGoto action_35
action_21 (50) = happyGoto action_36
action_21 _ = happyFail

action_22 (91) = happyShift action_25
action_22 (27) = happyGoto action_28
action_22 (44) = happyGoto action_29
action_22 (51) = happyGoto action_30
action_22 _ = happyFail

action_23 (91) = happyShift action_25
action_23 (27) = happyGoto action_26
action_23 (52) = happyGoto action_27
action_23 _ = happyFail

action_24 (91) = happyShift action_25
action_24 _ = happyFail

action_25 _ = happyReduce_24

action_26 (91) = happyShift action_25
action_26 (27) = happyGoto action_26
action_26 (52) = happyGoto action_135
action_26 _ = happyReduce_93

action_27 (93) = happyAccept
action_27 _ = happyFail

action_28 (66) = happyShift action_125
action_28 (70) = happyShift action_134
action_28 _ = happyFail

action_29 (91) = happyShift action_25
action_29 (27) = happyGoto action_133
action_29 _ = happyFail

action_30 (93) = happyAccept
action_30 _ = happyFail

action_31 _ = happyReduce_82

action_32 _ = happyReduce_78

action_33 _ = happyReduce_81

action_34 (65) = happyShift action_132
action_34 _ = happyReduce_88

action_35 (60) = happyShift action_131
action_35 _ = happyReduce_89

action_36 (93) = happyAccept
action_36 _ = happyFail

action_37 (56) = happyShift action_37
action_37 (75) = happyShift action_38
action_37 (77) = happyShift action_39
action_37 (78) = happyShift action_40
action_37 (79) = happyShift action_41
action_37 (82) = happyShift action_42
action_37 (91) = happyShift action_25
action_37 (92) = happyShift action_43
action_37 (27) = happyGoto action_31
action_37 (28) = happyGoto action_32
action_37 (47) = happyGoto action_33
action_37 (48) = happyGoto action_34
action_37 (49) = happyGoto action_130
action_37 _ = happyFail

action_38 _ = happyReduce_80

action_39 _ = happyReduce_79

action_40 (56) = happyShift action_37
action_40 (75) = happyShift action_38
action_40 (77) = happyShift action_39
action_40 (78) = happyShift action_40
action_40 (79) = happyShift action_41
action_40 (82) = happyShift action_42
action_40 (91) = happyShift action_25
action_40 (92) = happyShift action_43
action_40 (27) = happyGoto action_31
action_40 (28) = happyGoto action_32
action_40 (47) = happyGoto action_33
action_40 (48) = happyGoto action_34
action_40 (49) = happyGoto action_35
action_40 (50) = happyGoto action_129
action_40 _ = happyFail

action_41 _ = happyReduce_84

action_42 _ = happyReduce_83

action_43 _ = happyReduce_25

action_44 (93) = happyAccept
action_44 _ = happyFail

action_45 (93) = happyAccept
action_45 _ = happyFail

action_46 (93) = happyAccept
action_46 _ = happyFail

action_47 (93) = happyAccept
action_47 _ = happyFail

action_48 (56) = happyShift action_48
action_48 (74) = happyShift action_49
action_48 (76) = happyShift action_50
action_48 (78) = happyShift action_51
action_48 (45) = happyGoto action_128
action_48 (46) = happyGoto action_53
action_48 _ = happyFail

action_49 _ = happyReduce_75

action_50 _ = happyReduce_74

action_51 (56) = happyShift action_48
action_51 (74) = happyShift action_49
action_51 (76) = happyShift action_50
action_51 (78) = happyShift action_51
action_51 (46) = happyGoto action_127
action_51 _ = happyFail

action_52 (93) = happyAccept
action_52 _ = happyFail

action_53 (62) = happyShift action_126
action_53 _ = happyReduce_73

action_54 (66) = happyShift action_125
action_54 _ = happyFail

action_55 (93) = happyAccept
action_55 _ = happyFail

action_56 (93) = happyAccept
action_56 _ = happyFail

action_57 _ = happyReduce_70

action_58 _ = happyReduce_65

action_59 _ = happyReduce_66

action_60 _ = happyReduce_69

action_61 _ = happyReduce_67

action_62 _ = happyReduce_68

action_63 (93) = happyAccept
action_63 _ = happyFail

action_64 _ = happyReduce_64

action_65 _ = happyReduce_62

action_66 _ = happyReduce_63

action_67 (93) = happyAccept
action_67 _ = happyFail

action_68 _ = happyReduce_60

action_69 _ = happyReduce_61

action_70 _ = happyReduce_48

action_71 _ = happyReduce_49

action_72 (60) = happyShift action_124
action_72 _ = happyReduce_58

action_73 (65) = happyShift action_122
action_73 (90) = happyShift action_123
action_73 _ = happyReduce_35

action_74 (55) = happyShift action_121
action_74 (64) = happyShift action_57
action_74 (68) = happyShift action_58
action_74 (69) = happyShift action_59
action_74 (71) = happyShift action_60
action_74 (72) = happyShift action_61
action_74 (73) = happyShift action_62
action_74 (43) = happyGoto action_107
action_74 _ = happyReduce_37

action_75 (59) = happyShift action_68
action_75 (61) = happyShift action_69
action_75 (41) = happyGoto action_108
action_75 _ = happyReduce_39

action_76 (54) = happyShift action_64
action_76 (58) = happyShift action_65
action_76 (63) = happyShift action_66
action_76 (42) = happyGoto action_109
action_76 _ = happyReduce_41

action_77 (56) = happyShift action_81
action_77 (75) = happyShift action_83
action_77 (77) = happyShift action_84
action_77 (78) = happyShift action_85
action_77 (79) = happyShift action_86
action_77 (91) = happyShift action_25
action_77 (92) = happyShift action_43
action_77 (27) = happyGoto action_70
action_77 (28) = happyGoto action_71
action_77 (37) = happyGoto action_110
action_77 _ = happyReduce_43

action_78 _ = happyReduce_47

action_79 (93) = happyAccept
action_79 _ = happyFail

action_80 (56) = happyShift action_81
action_80 (75) = happyShift action_83
action_80 (77) = happyShift action_84
action_80 (78) = happyShift action_85
action_80 (79) = happyShift action_86
action_80 (91) = happyShift action_25
action_80 (92) = happyShift action_43
action_80 (27) = happyGoto action_70
action_80 (28) = happyGoto action_71
action_80 (37) = happyGoto action_120
action_80 _ = happyFail

action_81 (53) = happyShift action_80
action_81 (56) = happyShift action_81
action_81 (61) = happyShift action_82
action_81 (75) = happyShift action_83
action_81 (77) = happyShift action_84
action_81 (78) = happyShift action_85
action_81 (79) = happyShift action_86
action_81 (80) = happyShift action_87
action_81 (83) = happyShift action_88
action_81 (85) = happyShift action_89
action_81 (87) = happyShift action_90
action_81 (91) = happyShift action_25
action_81 (92) = happyShift action_43
action_81 (27) = happyGoto action_70
action_81 (28) = happyGoto action_71
action_81 (31) = happyGoto action_119
action_81 (32) = happyGoto action_73
action_81 (33) = happyGoto action_74
action_81 (34) = happyGoto action_75
action_81 (35) = happyGoto action_76
action_81 (36) = happyGoto action_77
action_81 (37) = happyGoto action_78
action_81 _ = happyFail

action_82 (56) = happyShift action_81
action_82 (75) = happyShift action_83
action_82 (77) = happyShift action_84
action_82 (78) = happyShift action_85
action_82 (79) = happyShift action_86
action_82 (91) = happyShift action_25
action_82 (92) = happyShift action_43
action_82 (27) = happyGoto action_70
action_82 (28) = happyGoto action_71
action_82 (37) = happyGoto action_118
action_82 _ = happyFail

action_83 _ = happyReduce_51

action_84 _ = happyReduce_50

action_85 (53) = happyShift action_80
action_85 (56) = happyShift action_81
action_85 (61) = happyShift action_82
action_85 (75) = happyShift action_83
action_85 (77) = happyShift action_84
action_85 (78) = happyShift action_85
action_85 (79) = happyShift action_86
action_85 (80) = happyShift action_87
action_85 (83) = happyShift action_88
action_85 (85) = happyShift action_89
action_85 (87) = happyShift action_90
action_85 (91) = happyShift action_25
action_85 (92) = happyShift action_43
action_85 (27) = happyGoto action_70
action_85 (28) = happyGoto action_71
action_85 (31) = happyGoto action_72
action_85 (32) = happyGoto action_73
action_85 (33) = happyGoto action_74
action_85 (34) = happyGoto action_75
action_85 (35) = happyGoto action_76
action_85 (36) = happyGoto action_77
action_85 (37) = happyGoto action_78
action_85 (40) = happyGoto action_117
action_85 _ = happyFail

action_86 _ = happyReduce_52

action_87 (91) = happyShift action_25
action_87 (27) = happyGoto action_26
action_87 (52) = happyGoto action_116
action_87 _ = happyFail

action_88 (53) = happyShift action_80
action_88 (56) = happyShift action_81
action_88 (61) = happyShift action_82
action_88 (75) = happyShift action_83
action_88 (77) = happyShift action_84
action_88 (78) = happyShift action_85
action_88 (79) = happyShift action_86
action_88 (80) = happyShift action_87
action_88 (83) = happyShift action_88
action_88 (85) = happyShift action_89
action_88 (87) = happyShift action_90
action_88 (91) = happyShift action_25
action_88 (92) = happyShift action_43
action_88 (27) = happyGoto action_70
action_88 (28) = happyGoto action_71
action_88 (31) = happyGoto action_115
action_88 (32) = happyGoto action_73
action_88 (33) = happyGoto action_74
action_88 (34) = happyGoto action_75
action_88 (35) = happyGoto action_76
action_88 (36) = happyGoto action_77
action_88 (37) = happyGoto action_78
action_88 _ = happyFail

action_89 (53) = happyShift action_80
action_89 (56) = happyShift action_81
action_89 (61) = happyShift action_82
action_89 (75) = happyShift action_83
action_89 (77) = happyShift action_84
action_89 (78) = happyShift action_85
action_89 (79) = happyShift action_86
action_89 (80) = happyShift action_87
action_89 (83) = happyShift action_88
action_89 (85) = happyShift action_89
action_89 (87) = happyShift action_90
action_89 (91) = happyShift action_25
action_89 (92) = happyShift action_43
action_89 (27) = happyGoto action_70
action_89 (28) = happyGoto action_71
action_89 (31) = happyGoto action_114
action_89 (32) = happyGoto action_73
action_89 (33) = happyGoto action_74
action_89 (34) = happyGoto action_75
action_89 (35) = happyGoto action_76
action_89 (36) = happyGoto action_77
action_89 (37) = happyGoto action_78
action_89 _ = happyFail

action_90 (91) = happyShift action_25
action_90 (27) = happyGoto action_28
action_90 (30) = happyGoto action_113
action_90 (44) = happyGoto action_29
action_90 (51) = happyGoto action_103
action_90 _ = happyFail

action_91 (67) = happyShift action_112
action_91 _ = happyFail

action_92 (93) = happyAccept
action_92 _ = happyFail

action_93 (62) = happyShift action_111
action_93 _ = happyFail

action_94 (93) = happyAccept
action_94 _ = happyFail

action_95 (93) = happyAccept
action_95 _ = happyFail

action_96 (56) = happyShift action_81
action_96 (75) = happyShift action_83
action_96 (77) = happyShift action_84
action_96 (78) = happyShift action_85
action_96 (79) = happyShift action_86
action_96 (91) = happyShift action_25
action_96 (92) = happyShift action_43
action_96 (93) = happyAccept
action_96 (27) = happyGoto action_70
action_96 (28) = happyGoto action_71
action_96 (37) = happyGoto action_110
action_96 _ = happyFail

action_97 (54) = happyShift action_64
action_97 (58) = happyShift action_65
action_97 (63) = happyShift action_66
action_97 (93) = happyAccept
action_97 (42) = happyGoto action_109
action_97 _ = happyFail

action_98 (59) = happyShift action_68
action_98 (61) = happyShift action_69
action_98 (93) = happyAccept
action_98 (41) = happyGoto action_108
action_98 _ = happyFail

action_99 (64) = happyShift action_57
action_99 (68) = happyShift action_58
action_99 (69) = happyShift action_59
action_99 (71) = happyShift action_60
action_99 (72) = happyShift action_61
action_99 (73) = happyShift action_62
action_99 (93) = happyAccept
action_99 (43) = happyGoto action_107
action_99 _ = happyFail

action_100 (93) = happyAccept
action_100 _ = happyFail

action_101 (93) = happyAccept
action_101 _ = happyFail

action_102 (93) = happyAccept
action_102 _ = happyFail

action_103 (67) = happyShift action_106
action_103 _ = happyFail

action_104 (93) = happyAccept
action_104 _ = happyFail

action_105 _ = happyReduce_26

action_106 (91) = happyShift action_25
action_106 (27) = happyGoto action_28
action_106 (30) = happyGoto action_161
action_106 (44) = happyGoto action_29
action_106 (51) = happyGoto action_103
action_106 _ = happyReduce_27

action_107 (53) = happyShift action_80
action_107 (56) = happyShift action_81
action_107 (61) = happyShift action_82
action_107 (75) = happyShift action_83
action_107 (77) = happyShift action_84
action_107 (78) = happyShift action_85
action_107 (79) = happyShift action_86
action_107 (91) = happyShift action_25
action_107 (92) = happyShift action_43
action_107 (27) = happyGoto action_70
action_107 (28) = happyGoto action_71
action_107 (34) = happyGoto action_160
action_107 (35) = happyGoto action_76
action_107 (36) = happyGoto action_77
action_107 (37) = happyGoto action_78
action_107 _ = happyFail

action_108 (53) = happyShift action_80
action_108 (56) = happyShift action_81
action_108 (61) = happyShift action_82
action_108 (75) = happyShift action_83
action_108 (77) = happyShift action_84
action_108 (78) = happyShift action_85
action_108 (79) = happyShift action_86
action_108 (91) = happyShift action_25
action_108 (92) = happyShift action_43
action_108 (27) = happyGoto action_70
action_108 (28) = happyGoto action_71
action_108 (35) = happyGoto action_159
action_108 (36) = happyGoto action_77
action_108 (37) = happyGoto action_78
action_108 _ = happyFail

action_109 (53) = happyShift action_80
action_109 (56) = happyShift action_81
action_109 (61) = happyShift action_82
action_109 (75) = happyShift action_83
action_109 (77) = happyShift action_84
action_109 (78) = happyShift action_85
action_109 (79) = happyShift action_86
action_109 (91) = happyShift action_25
action_109 (92) = happyShift action_43
action_109 (27) = happyGoto action_70
action_109 (28) = happyGoto action_71
action_109 (36) = happyGoto action_158
action_109 (37) = happyGoto action_78
action_109 _ = happyFail

action_110 _ = happyReduce_46

action_111 (53) = happyShift action_80
action_111 (56) = happyShift action_81
action_111 (61) = happyShift action_82
action_111 (75) = happyShift action_83
action_111 (77) = happyShift action_84
action_111 (78) = happyShift action_85
action_111 (79) = happyShift action_86
action_111 (80) = happyShift action_87
action_111 (83) = happyShift action_88
action_111 (85) = happyShift action_89
action_111 (87) = happyShift action_90
action_111 (91) = happyShift action_25
action_111 (92) = happyShift action_43
action_111 (27) = happyGoto action_70
action_111 (28) = happyGoto action_71
action_111 (31) = happyGoto action_157
action_111 (32) = happyGoto action_73
action_111 (33) = happyGoto action_74
action_111 (34) = happyGoto action_75
action_111 (35) = happyGoto action_76
action_111 (36) = happyGoto action_77
action_111 (37) = happyGoto action_78
action_111 _ = happyFail

action_112 (56) = happyShift action_37
action_112 (75) = happyShift action_38
action_112 (77) = happyShift action_39
action_112 (78) = happyShift action_40
action_112 (79) = happyShift action_41
action_112 (82) = happyShift action_42
action_112 (91) = happyShift action_25
action_112 (92) = happyShift action_43
action_112 (27) = happyGoto action_31
action_112 (28) = happyGoto action_32
action_112 (38) = happyGoto action_91
action_112 (39) = happyGoto action_156
action_112 (47) = happyGoto action_33
action_112 (48) = happyGoto action_34
action_112 (49) = happyGoto action_93
action_112 _ = happyReduce_56

action_113 (86) = happyShift action_155
action_113 _ = happyFail

action_114 (89) = happyShift action_154
action_114 _ = happyFail

action_115 (88) = happyShift action_153
action_115 _ = happyFail

action_116 (62) = happyShift action_152
action_116 _ = happyFail

action_117 (81) = happyShift action_151
action_117 _ = happyFail

action_118 _ = happyReduce_45

action_119 (57) = happyShift action_150
action_119 _ = happyFail

action_120 _ = happyReduce_44

action_121 (53) = happyShift action_80
action_121 (56) = happyShift action_81
action_121 (61) = happyShift action_82
action_121 (75) = happyShift action_83
action_121 (77) = happyShift action_84
action_121 (78) = happyShift action_85
action_121 (79) = happyShift action_86
action_121 (91) = happyShift action_25
action_121 (92) = happyShift action_43
action_121 (27) = happyGoto action_70
action_121 (28) = happyGoto action_71
action_121 (32) = happyGoto action_149
action_121 (33) = happyGoto action_74
action_121 (34) = happyGoto action_75
action_121 (35) = happyGoto action_76
action_121 (36) = happyGoto action_77
action_121 (37) = happyGoto action_78
action_121 _ = happyFail

action_122 (53) = happyShift action_80
action_122 (56) = happyShift action_81
action_122 (61) = happyShift action_82
action_122 (75) = happyShift action_83
action_122 (77) = happyShift action_84
action_122 (78) = happyShift action_85
action_122 (79) = happyShift action_86
action_122 (80) = happyShift action_87
action_122 (83) = happyShift action_88
action_122 (85) = happyShift action_89
action_122 (87) = happyShift action_90
action_122 (91) = happyShift action_25
action_122 (92) = happyShift action_43
action_122 (27) = happyGoto action_70
action_122 (28) = happyGoto action_71
action_122 (31) = happyGoto action_148
action_122 (32) = happyGoto action_73
action_122 (33) = happyGoto action_74
action_122 (34) = happyGoto action_75
action_122 (35) = happyGoto action_76
action_122 (36) = happyGoto action_77
action_122 (37) = happyGoto action_78
action_122 _ = happyFail

action_123 (53) = happyShift action_80
action_123 (56) = happyShift action_81
action_123 (61) = happyShift action_82
action_123 (75) = happyShift action_83
action_123 (77) = happyShift action_84
action_123 (78) = happyShift action_85
action_123 (79) = happyShift action_86
action_123 (80) = happyShift action_87
action_123 (83) = happyShift action_88
action_123 (85) = happyShift action_89
action_123 (87) = happyShift action_90
action_123 (91) = happyShift action_25
action_123 (92) = happyShift action_43
action_123 (27) = happyGoto action_70
action_123 (28) = happyGoto action_71
action_123 (31) = happyGoto action_147
action_123 (32) = happyGoto action_73
action_123 (33) = happyGoto action_74
action_123 (34) = happyGoto action_75
action_123 (35) = happyGoto action_76
action_123 (36) = happyGoto action_77
action_123 (37) = happyGoto action_78
action_123 _ = happyFail

action_124 (53) = happyShift action_80
action_124 (56) = happyShift action_81
action_124 (61) = happyShift action_82
action_124 (75) = happyShift action_83
action_124 (77) = happyShift action_84
action_124 (78) = happyShift action_85
action_124 (79) = happyShift action_86
action_124 (80) = happyShift action_87
action_124 (83) = happyShift action_88
action_124 (85) = happyShift action_89
action_124 (87) = happyShift action_90
action_124 (91) = happyShift action_25
action_124 (92) = happyShift action_43
action_124 (27) = happyGoto action_70
action_124 (28) = happyGoto action_71
action_124 (31) = happyGoto action_72
action_124 (32) = happyGoto action_73
action_124 (33) = happyGoto action_74
action_124 (34) = happyGoto action_75
action_124 (35) = happyGoto action_76
action_124 (36) = happyGoto action_77
action_124 (37) = happyGoto action_78
action_124 (40) = happyGoto action_146
action_124 _ = happyFail

action_125 (56) = happyShift action_48
action_125 (74) = happyShift action_49
action_125 (76) = happyShift action_50
action_125 (78) = happyShift action_51
action_125 (45) = happyGoto action_145
action_125 (46) = happyGoto action_53
action_125 _ = happyFail

action_126 (56) = happyShift action_48
action_126 (74) = happyShift action_49
action_126 (76) = happyShift action_50
action_126 (78) = happyShift action_51
action_126 (45) = happyGoto action_144
action_126 (46) = happyGoto action_53
action_126 _ = happyFail

action_127 (81) = happyShift action_143
action_127 _ = happyFail

action_128 (57) = happyShift action_142
action_128 _ = happyFail

action_129 (81) = happyShift action_141
action_129 _ = happyFail

action_130 (57) = happyShift action_140
action_130 _ = happyFail

action_131 (56) = happyShift action_37
action_131 (75) = happyShift action_38
action_131 (77) = happyShift action_39
action_131 (78) = happyShift action_40
action_131 (79) = happyShift action_41
action_131 (82) = happyShift action_42
action_131 (91) = happyShift action_25
action_131 (92) = happyShift action_43
action_131 (27) = happyGoto action_31
action_131 (28) = happyGoto action_32
action_131 (47) = happyGoto action_33
action_131 (48) = happyGoto action_34
action_131 (49) = happyGoto action_35
action_131 (50) = happyGoto action_139
action_131 _ = happyFail

action_132 (56) = happyShift action_37
action_132 (75) = happyShift action_38
action_132 (77) = happyShift action_39
action_132 (78) = happyShift action_40
action_132 (79) = happyShift action_41
action_132 (82) = happyShift action_42
action_132 (91) = happyShift action_25
action_132 (92) = happyShift action_43
action_132 (27) = happyGoto action_31
action_132 (28) = happyGoto action_32
action_132 (47) = happyGoto action_33
action_132 (48) = happyGoto action_34
action_132 (49) = happyGoto action_138
action_132 _ = happyFail

action_133 (91) = happyShift action_25
action_133 (27) = happyGoto action_26
action_133 (52) = happyGoto action_137
action_133 _ = happyFail

action_134 (53) = happyShift action_80
action_134 (56) = happyShift action_81
action_134 (61) = happyShift action_82
action_134 (75) = happyShift action_83
action_134 (77) = happyShift action_84
action_134 (78) = happyShift action_85
action_134 (79) = happyShift action_86
action_134 (80) = happyShift action_87
action_134 (83) = happyShift action_88
action_134 (85) = happyShift action_89
action_134 (87) = happyShift action_90
action_134 (91) = happyShift action_25
action_134 (92) = happyShift action_43
action_134 (27) = happyGoto action_70
action_134 (28) = happyGoto action_71
action_134 (31) = happyGoto action_136
action_134 (32) = happyGoto action_73
action_134 (33) = happyGoto action_74
action_134 (34) = happyGoto action_75
action_134 (35) = happyGoto action_76
action_134 (36) = happyGoto action_77
action_134 (37) = happyGoto action_78
action_134 _ = happyFail

action_135 _ = happyReduce_94

action_136 _ = happyReduce_92

action_137 (70) = happyShift action_166
action_137 _ = happyFail

action_138 _ = happyReduce_87

action_139 _ = happyReduce_90

action_140 _ = happyReduce_86

action_141 _ = happyReduce_85

action_142 _ = happyReduce_77

action_143 _ = happyReduce_76

action_144 _ = happyReduce_72

action_145 _ = happyReduce_71

action_146 _ = happyReduce_59

action_147 _ = happyReduce_29

action_148 _ = happyReduce_30

action_149 _ = happyReduce_36

action_150 _ = happyReduce_54

action_151 _ = happyReduce_53

action_152 (53) = happyShift action_80
action_152 (56) = happyShift action_81
action_152 (61) = happyShift action_82
action_152 (75) = happyShift action_83
action_152 (77) = happyShift action_84
action_152 (78) = happyShift action_85
action_152 (79) = happyShift action_86
action_152 (80) = happyShift action_87
action_152 (83) = happyShift action_88
action_152 (85) = happyShift action_89
action_152 (87) = happyShift action_90
action_152 (91) = happyShift action_25
action_152 (92) = happyShift action_43
action_152 (27) = happyGoto action_70
action_152 (28) = happyGoto action_71
action_152 (31) = happyGoto action_165
action_152 (32) = happyGoto action_73
action_152 (33) = happyGoto action_74
action_152 (34) = happyGoto action_75
action_152 (35) = happyGoto action_76
action_152 (36) = happyGoto action_77
action_152 (37) = happyGoto action_78
action_152 _ = happyFail

action_153 (56) = happyShift action_37
action_153 (75) = happyShift action_38
action_153 (77) = happyShift action_39
action_153 (78) = happyShift action_40
action_153 (79) = happyShift action_41
action_153 (82) = happyShift action_42
action_153 (91) = happyShift action_25
action_153 (92) = happyShift action_43
action_153 (27) = happyGoto action_31
action_153 (28) = happyGoto action_32
action_153 (38) = happyGoto action_91
action_153 (39) = happyGoto action_164
action_153 (47) = happyGoto action_33
action_153 (48) = happyGoto action_34
action_153 (49) = happyGoto action_93
action_153 _ = happyFail

action_154 (53) = happyShift action_80
action_154 (56) = happyShift action_81
action_154 (61) = happyShift action_82
action_154 (75) = happyShift action_83
action_154 (77) = happyShift action_84
action_154 (78) = happyShift action_85
action_154 (79) = happyShift action_86
action_154 (80) = happyShift action_87
action_154 (83) = happyShift action_88
action_154 (85) = happyShift action_89
action_154 (87) = happyShift action_90
action_154 (91) = happyShift action_25
action_154 (92) = happyShift action_43
action_154 (27) = happyGoto action_70
action_154 (28) = happyGoto action_71
action_154 (31) = happyGoto action_163
action_154 (32) = happyGoto action_73
action_154 (33) = happyGoto action_74
action_154 (34) = happyGoto action_75
action_154 (35) = happyGoto action_76
action_154 (36) = happyGoto action_77
action_154 (37) = happyGoto action_78
action_154 _ = happyFail

action_155 (53) = happyShift action_80
action_155 (56) = happyShift action_81
action_155 (61) = happyShift action_82
action_155 (75) = happyShift action_83
action_155 (77) = happyShift action_84
action_155 (78) = happyShift action_85
action_155 (79) = happyShift action_86
action_155 (80) = happyShift action_87
action_155 (83) = happyShift action_88
action_155 (85) = happyShift action_89
action_155 (87) = happyShift action_90
action_155 (91) = happyShift action_25
action_155 (92) = happyShift action_43
action_155 (27) = happyGoto action_70
action_155 (28) = happyGoto action_71
action_155 (31) = happyGoto action_162
action_155 (32) = happyGoto action_73
action_155 (33) = happyGoto action_74
action_155 (34) = happyGoto action_75
action_155 (35) = happyGoto action_76
action_155 (36) = happyGoto action_77
action_155 (37) = happyGoto action_78
action_155 _ = happyFail

action_156 _ = happyReduce_57

action_157 _ = happyReduce_55

action_158 (56) = happyShift action_81
action_158 (75) = happyShift action_83
action_158 (77) = happyShift action_84
action_158 (78) = happyShift action_85
action_158 (79) = happyShift action_86
action_158 (91) = happyShift action_25
action_158 (92) = happyShift action_43
action_158 (27) = happyGoto action_70
action_158 (28) = happyGoto action_71
action_158 (37) = happyGoto action_110
action_158 _ = happyReduce_42

action_159 (54) = happyShift action_64
action_159 (58) = happyShift action_65
action_159 (63) = happyShift action_66
action_159 (42) = happyGoto action_109
action_159 _ = happyReduce_40

action_160 (59) = happyShift action_68
action_160 (61) = happyShift action_69
action_160 (41) = happyGoto action_108
action_160 _ = happyReduce_38

action_161 _ = happyReduce_28

action_162 _ = happyReduce_32

action_163 (84) = happyShift action_168
action_163 _ = happyFail

action_164 _ = happyReduce_31

action_165 _ = happyReduce_33

action_166 (53) = happyShift action_80
action_166 (56) = happyShift action_81
action_166 (61) = happyShift action_82
action_166 (75) = happyShift action_83
action_166 (77) = happyShift action_84
action_166 (78) = happyShift action_85
action_166 (79) = happyShift action_86
action_166 (80) = happyShift action_87
action_166 (83) = happyShift action_88
action_166 (85) = happyShift action_89
action_166 (87) = happyShift action_90
action_166 (91) = happyShift action_25
action_166 (92) = happyShift action_43
action_166 (27) = happyGoto action_70
action_166 (28) = happyGoto action_71
action_166 (31) = happyGoto action_167
action_166 (32) = happyGoto action_73
action_166 (33) = happyGoto action_74
action_166 (34) = happyGoto action_75
action_166 (35) = happyGoto action_76
action_166 (36) = happyGoto action_77
action_166 (37) = happyGoto action_78
action_166 _ = happyFail

action_167 _ = happyReduce_91

action_168 (53) = happyShift action_80
action_168 (56) = happyShift action_81
action_168 (61) = happyShift action_82
action_168 (75) = happyShift action_83
action_168 (77) = happyShift action_84
action_168 (78) = happyShift action_85
action_168 (79) = happyShift action_86
action_168 (80) = happyShift action_87
action_168 (83) = happyShift action_88
action_168 (85) = happyShift action_89
action_168 (87) = happyShift action_90
action_168 (91) = happyShift action_25
action_168 (92) = happyShift action_43
action_168 (27) = happyGoto action_70
action_168 (28) = happyGoto action_71
action_168 (31) = happyGoto action_169
action_168 (32) = happyGoto action_73
action_168 (33) = happyGoto action_74
action_168 (34) = happyGoto action_75
action_168 (35) = happyGoto action_76
action_168 (36) = happyGoto action_77
action_168 (37) = happyGoto action_78
action_168 _ = happyFail

action_169 _ = happyReduce_34

happyReduce_24 = happySpecReduce_1  27 happyReduction_24
happyReduction_24 (HappyTerminal (PT _ (TV happy_var_1)))
	 =  HappyAbsSyn27
		 (Ident happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  28 happyReduction_25
happyReduction_25 (HappyTerminal (PT _ (TI happy_var_1)))
	 =  HappyAbsSyn28
		 ((read ( happy_var_1)) :: Integer
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  29 happyReduction_26
happyReduction_26 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn29
		 (AbsGrammar.Program happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_2  30 happyReduction_27
happyReduction_27 _
	(HappyAbsSyn51  happy_var_1)
	 =  HappyAbsSyn30
		 ((:[]) happy_var_1
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  30 happyReduction_28
happyReduction_28 (HappyAbsSyn30  happy_var_3)
	_
	(HappyAbsSyn51  happy_var_1)
	 =  HappyAbsSyn30
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  31 happyReduction_29
happyReduction_29 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsGrammar.EOr happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  31 happyReduction_30
happyReduction_30 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsGrammar.EListConsB happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happyReduce 4 31 happyReduction_31
happyReduction_31 ((HappyAbsSyn39  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn31  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn31
		 (AbsGrammar.ECase happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 4 31 happyReduction_32
happyReduction_32 ((HappyAbsSyn31  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn30  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn31
		 (AbsGrammar.ELet happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 4 31 happyReduction_33
happyReduction_33 ((HappyAbsSyn31  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn52  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn31
		 (AbsGrammar.ELambda happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_34 = happyReduce 6 31 happyReduction_34
happyReduction_34 ((HappyAbsSyn31  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn31  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn31  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn31
		 (AbsGrammar.EIf happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_35 = happySpecReduce_1  31 happyReduction_35
happyReduction_35 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  32 happyReduction_36
happyReduction_36 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsGrammar.EAnd happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  32 happyReduction_37
happyReduction_37 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  33 happyReduction_38
happyReduction_38 (HappyAbsSyn31  happy_var_3)
	(HappyAbsSyn43  happy_var_2)
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsGrammar.ERel happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  33 happyReduction_39
happyReduction_39 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  34 happyReduction_40
happyReduction_40 (HappyAbsSyn31  happy_var_3)
	(HappyAbsSyn41  happy_var_2)
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsGrammar.EAdd happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  34 happyReduction_41
happyReduction_41 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  35 happyReduction_42
happyReduction_42 (HappyAbsSyn31  happy_var_3)
	(HappyAbsSyn42  happy_var_2)
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsGrammar.EMul happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  35 happyReduction_43
happyReduction_43 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_2  36 happyReduction_44
happyReduction_44 (HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn31
		 (AbsGrammar.Not happy_var_2
	)
happyReduction_44 _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_2  36 happyReduction_45
happyReduction_45 (HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn31
		 (AbsGrammar.Neg happy_var_2
	)
happyReduction_45 _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_2  36 happyReduction_46
happyReduction_46 (HappyAbsSyn31  happy_var_2)
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsGrammar.EFunApp happy_var_1 happy_var_2
	)
happyReduction_46 _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_1  36 happyReduction_47
happyReduction_47 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  37 happyReduction_48
happyReduction_48 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsGrammar.EVar happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  37 happyReduction_49
happyReduction_49 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsGrammar.ELitInt happy_var_1
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  37 happyReduction_50
happyReduction_50 _
	 =  HappyAbsSyn31
		 (AbsGrammar.ELitTrue
	)

happyReduce_51 = happySpecReduce_1  37 happyReduction_51
happyReduction_51 _
	 =  HappyAbsSyn31
		 (AbsGrammar.ELitFalse
	)

happyReduce_52 = happySpecReduce_1  37 happyReduction_52
happyReduction_52 _
	 =  HappyAbsSyn31
		 (AbsGrammar.EListConsE
	)

happyReduce_53 = happySpecReduce_3  37 happyReduction_53
happyReduction_53 _
	(HappyAbsSyn40  happy_var_2)
	_
	 =  HappyAbsSyn31
		 (AbsGrammar.EListConsA happy_var_2
	)
happyReduction_53 _ _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_3  37 happyReduction_54
happyReduction_54 _
	(HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn31
		 (happy_var_2
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_3  38 happyReduction_55
happyReduction_55 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn48  happy_var_1)
	 =  HappyAbsSyn38
		 (AbsGrammar.CaseAlt happy_var_1 happy_var_3
	)
happyReduction_55 _ _ _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_2  39 happyReduction_56
happyReduction_56 _
	(HappyAbsSyn38  happy_var_1)
	 =  HappyAbsSyn39
		 ((:[]) happy_var_1
	)
happyReduction_56 _ _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_3  39 happyReduction_57
happyReduction_57 (HappyAbsSyn39  happy_var_3)
	_
	(HappyAbsSyn38  happy_var_1)
	 =  HappyAbsSyn39
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_57 _ _ _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  40 happyReduction_58
happyReduction_58 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn40
		 ((:[]) happy_var_1
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  40 happyReduction_59
happyReduction_59 (HappyAbsSyn40  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn40
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_1  41 happyReduction_60
happyReduction_60 _
	 =  HappyAbsSyn41
		 (AbsGrammar.Plus
	)

happyReduce_61 = happySpecReduce_1  41 happyReduction_61
happyReduction_61 _
	 =  HappyAbsSyn41
		 (AbsGrammar.Minus
	)

happyReduce_62 = happySpecReduce_1  42 happyReduction_62
happyReduction_62 _
	 =  HappyAbsSyn42
		 (AbsGrammar.Times
	)

happyReduce_63 = happySpecReduce_1  42 happyReduction_63
happyReduction_63 _
	 =  HappyAbsSyn42
		 (AbsGrammar.Div
	)

happyReduce_64 = happySpecReduce_1  42 happyReduction_64
happyReduction_64 _
	 =  HappyAbsSyn42
		 (AbsGrammar.Mod
	)

happyReduce_65 = happySpecReduce_1  43 happyReduction_65
happyReduction_65 _
	 =  HappyAbsSyn43
		 (AbsGrammar.LTH
	)

happyReduce_66 = happySpecReduce_1  43 happyReduction_66
happyReduction_66 _
	 =  HappyAbsSyn43
		 (AbsGrammar.LE
	)

happyReduce_67 = happySpecReduce_1  43 happyReduction_67
happyReduction_67 _
	 =  HappyAbsSyn43
		 (AbsGrammar.GTH
	)

happyReduce_68 = happySpecReduce_1  43 happyReduction_68
happyReduction_68 _
	 =  HappyAbsSyn43
		 (AbsGrammar.GE
	)

happyReduce_69 = happySpecReduce_1  43 happyReduction_69
happyReduction_69 _
	 =  HappyAbsSyn43
		 (AbsGrammar.EQU
	)

happyReduce_70 = happySpecReduce_1  43 happyReduction_70
happyReduction_70 _
	 =  HappyAbsSyn43
		 (AbsGrammar.NE
	)

happyReduce_71 = happySpecReduce_3  44 happyReduction_71
happyReduction_71 (HappyAbsSyn45  happy_var_3)
	_
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn44
		 (AbsGrammar.TypeSign happy_var_1 happy_var_3
	)
happyReduction_71 _ _ _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_3  45 happyReduction_72
happyReduction_72 (HappyAbsSyn45  happy_var_3)
	_
	(HappyAbsSyn45  happy_var_1)
	 =  HappyAbsSyn45
		 (AbsGrammar.FunType happy_var_1 happy_var_3
	)
happyReduction_72 _ _ _  = notHappyAtAll 

happyReduce_73 = happySpecReduce_1  45 happyReduction_73
happyReduction_73 (HappyAbsSyn45  happy_var_1)
	 =  HappyAbsSyn45
		 (happy_var_1
	)
happyReduction_73 _  = notHappyAtAll 

happyReduce_74 = happySpecReduce_1  46 happyReduction_74
happyReduction_74 _
	 =  HappyAbsSyn45
		 (AbsGrammar.IntType
	)

happyReduce_75 = happySpecReduce_1  46 happyReduction_75
happyReduction_75 _
	 =  HappyAbsSyn45
		 (AbsGrammar.BoolType
	)

happyReduce_76 = happySpecReduce_3  46 happyReduction_76
happyReduction_76 _
	(HappyAbsSyn45  happy_var_2)
	_
	 =  HappyAbsSyn45
		 (AbsGrammar.TypeList happy_var_2
	)
happyReduction_76 _ _ _  = notHappyAtAll 

happyReduce_77 = happySpecReduce_3  46 happyReduction_77
happyReduction_77 _
	(HappyAbsSyn45  happy_var_2)
	_
	 =  HappyAbsSyn45
		 (happy_var_2
	)
happyReduction_77 _ _ _  = notHappyAtAll 

happyReduce_78 = happySpecReduce_1  47 happyReduction_78
happyReduction_78 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGrammar.LitInteger happy_var_1
	)
happyReduction_78 _  = notHappyAtAll 

happyReduce_79 = happySpecReduce_1  47 happyReduction_79
happyReduction_79 _
	 =  HappyAbsSyn47
		 (AbsGrammar.Lit_True
	)

happyReduce_80 = happySpecReduce_1  47 happyReduction_80
happyReduction_80 _
	 =  HappyAbsSyn47
		 (AbsGrammar.Lit_False
	)

happyReduce_81 = happySpecReduce_1  48 happyReduction_81
happyReduction_81 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn48
		 (AbsGrammar.PatLit happy_var_1
	)
happyReduction_81 _  = notHappyAtAll 

happyReduce_82 = happySpecReduce_1  48 happyReduction_82
happyReduction_82 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn48
		 (AbsGrammar.PatVar happy_var_1
	)
happyReduction_82 _  = notHappyAtAll 

happyReduce_83 = happySpecReduce_1  48 happyReduction_83
happyReduction_83 _
	 =  HappyAbsSyn48
		 (AbsGrammar.PatDummy
	)

happyReduce_84 = happySpecReduce_1  48 happyReduction_84
happyReduction_84 _
	 =  HappyAbsSyn48
		 (AbsGrammar.PatListE
	)

happyReduce_85 = happySpecReduce_3  48 happyReduction_85
happyReduction_85 _
	(HappyAbsSyn50  happy_var_2)
	_
	 =  HappyAbsSyn48
		 (AbsGrammar.PatListA happy_var_2
	)
happyReduction_85 _ _ _  = notHappyAtAll 

happyReduce_86 = happySpecReduce_3  48 happyReduction_86
happyReduction_86 _
	(HappyAbsSyn48  happy_var_2)
	_
	 =  HappyAbsSyn48
		 (happy_var_2
	)
happyReduction_86 _ _ _  = notHappyAtAll 

happyReduce_87 = happySpecReduce_3  49 happyReduction_87
happyReduction_87 (HappyAbsSyn48  happy_var_3)
	_
	(HappyAbsSyn48  happy_var_1)
	 =  HappyAbsSyn48
		 (AbsGrammar.PatListB happy_var_1 happy_var_3
	)
happyReduction_87 _ _ _  = notHappyAtAll 

happyReduce_88 = happySpecReduce_1  49 happyReduction_88
happyReduction_88 (HappyAbsSyn48  happy_var_1)
	 =  HappyAbsSyn48
		 (happy_var_1
	)
happyReduction_88 _  = notHappyAtAll 

happyReduce_89 = happySpecReduce_1  50 happyReduction_89
happyReduction_89 (HappyAbsSyn48  happy_var_1)
	 =  HappyAbsSyn50
		 ((:[]) happy_var_1
	)
happyReduction_89 _  = notHappyAtAll 

happyReduce_90 = happySpecReduce_3  50 happyReduction_90
happyReduction_90 (HappyAbsSyn50  happy_var_3)
	_
	(HappyAbsSyn48  happy_var_1)
	 =  HappyAbsSyn50
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_90 _ _ _  = notHappyAtAll 

happyReduce_91 = happyReduce 5 51 happyReduction_91
happyReduction_91 ((HappyAbsSyn31  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn52  happy_var_3) `HappyStk`
	(HappyAbsSyn27  happy_var_2) `HappyStk`
	(HappyAbsSyn44  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn51
		 (AbsGrammar.FunDecl happy_var_1 happy_var_2 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_92 = happySpecReduce_3  51 happyReduction_92
happyReduction_92 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn51
		 (AbsGrammar.VarDecl happy_var_1 happy_var_3
	)
happyReduction_92 _ _ _  = notHappyAtAll 

happyReduce_93 = happySpecReduce_1  52 happyReduction_93
happyReduction_93 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn52
		 ((:[]) happy_var_1
	)
happyReduction_93 _  = notHappyAtAll 

happyReduce_94 = happySpecReduce_2  52 happyReduction_94
happyReduction_94 (HappyAbsSyn52  happy_var_2)
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn52
		 ((:) happy_var_1 happy_var_2
	)
happyReduction_94 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 93 93 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 53;
	PT _ (TS _ 2) -> cont 54;
	PT _ (TS _ 3) -> cont 55;
	PT _ (TS _ 4) -> cont 56;
	PT _ (TS _ 5) -> cont 57;
	PT _ (TS _ 6) -> cont 58;
	PT _ (TS _ 7) -> cont 59;
	PT _ (TS _ 8) -> cont 60;
	PT _ (TS _ 9) -> cont 61;
	PT _ (TS _ 10) -> cont 62;
	PT _ (TS _ 11) -> cont 63;
	PT _ (TS _ 12) -> cont 64;
	PT _ (TS _ 13) -> cont 65;
	PT _ (TS _ 14) -> cont 66;
	PT _ (TS _ 15) -> cont 67;
	PT _ (TS _ 16) -> cont 68;
	PT _ (TS _ 17) -> cont 69;
	PT _ (TS _ 18) -> cont 70;
	PT _ (TS _ 19) -> cont 71;
	PT _ (TS _ 20) -> cont 72;
	PT _ (TS _ 21) -> cont 73;
	PT _ (TS _ 22) -> cont 74;
	PT _ (TS _ 23) -> cont 75;
	PT _ (TS _ 24) -> cont 76;
	PT _ (TS _ 25) -> cont 77;
	PT _ (TS _ 26) -> cont 78;
	PT _ (TS _ 27) -> cont 79;
	PT _ (TS _ 28) -> cont 80;
	PT _ (TS _ 29) -> cont 81;
	PT _ (TS _ 30) -> cont 82;
	PT _ (TS _ 31) -> cont 83;
	PT _ (TS _ 32) -> cont 84;
	PT _ (TS _ 33) -> cont 85;
	PT _ (TS _ 34) -> cont 86;
	PT _ (TS _ 35) -> cont 87;
	PT _ (TS _ 36) -> cont 88;
	PT _ (TS _ 37) -> cont 89;
	PT _ (TS _ 38) -> cont 90;
	PT _ (TV happy_dollar_dollar) -> cont 91;
	PT _ (TI happy_dollar_dollar) -> cont 92;
	_ -> happyError' (tk:tks)
	}

happyError_ 93 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

happyThen :: () => Err a -> (a -> Err b) -> Err b
happyThen = (thenM)
happyReturn :: () => a -> Err a
happyReturn = (returnM)
happyThen1 m k tks = (thenM) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Err a
happyReturn1 = \a tks -> (returnM) a
happyError' :: () => [(Token)] -> Err a
happyError' = happyError

pProg tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn29 z -> happyReturn z; _other -> notHappyAtAll })

pListDecl tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_1 tks) (\x -> case x of {HappyAbsSyn30 z -> happyReturn z; _other -> notHappyAtAll })

pExpr tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_2 tks) (\x -> case x of {HappyAbsSyn31 z -> happyReturn z; _other -> notHappyAtAll })

pExpr1 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_3 tks) (\x -> case x of {HappyAbsSyn31 z -> happyReturn z; _other -> notHappyAtAll })

pExpr2 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_4 tks) (\x -> case x of {HappyAbsSyn31 z -> happyReturn z; _other -> notHappyAtAll })

pExpr3 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_5 tks) (\x -> case x of {HappyAbsSyn31 z -> happyReturn z; _other -> notHappyAtAll })

pExpr4 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_6 tks) (\x -> case x of {HappyAbsSyn31 z -> happyReturn z; _other -> notHappyAtAll })

pExpr5 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_7 tks) (\x -> case x of {HappyAbsSyn31 z -> happyReturn z; _other -> notHappyAtAll })

pExpr6 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_8 tks) (\x -> case x of {HappyAbsSyn31 z -> happyReturn z; _other -> notHappyAtAll })

pPatExpr tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_9 tks) (\x -> case x of {HappyAbsSyn38 z -> happyReturn z; _other -> notHappyAtAll })

pListPatExpr tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_10 tks) (\x -> case x of {HappyAbsSyn39 z -> happyReturn z; _other -> notHappyAtAll })

pListExpr tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_11 tks) (\x -> case x of {HappyAbsSyn40 z -> happyReturn z; _other -> notHappyAtAll })

pAddOp tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_12 tks) (\x -> case x of {HappyAbsSyn41 z -> happyReturn z; _other -> notHappyAtAll })

pMulOp tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_13 tks) (\x -> case x of {HappyAbsSyn42 z -> happyReturn z; _other -> notHappyAtAll })

pRelOp tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_14 tks) (\x -> case x of {HappyAbsSyn43 z -> happyReturn z; _other -> notHappyAtAll })

pTypeSig tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_15 tks) (\x -> case x of {HappyAbsSyn44 z -> happyReturn z; _other -> notHappyAtAll })

pType tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_16 tks) (\x -> case x of {HappyAbsSyn45 z -> happyReturn z; _other -> notHappyAtAll })

pType1 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_17 tks) (\x -> case x of {HappyAbsSyn45 z -> happyReturn z; _other -> notHappyAtAll })

pLit tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_18 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pPat1 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_19 tks) (\x -> case x of {HappyAbsSyn48 z -> happyReturn z; _other -> notHappyAtAll })

pPat tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_20 tks) (\x -> case x of {HappyAbsSyn48 z -> happyReturn z; _other -> notHappyAtAll })

pListPat tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_21 tks) (\x -> case x of {HappyAbsSyn50 z -> happyReturn z; _other -> notHappyAtAll })

pDecl tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_22 tks) (\x -> case x of {HappyAbsSyn51 z -> happyReturn z; _other -> notHappyAtAll })

pListIdent tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_23 tks) (\x -> case x of {HappyAbsSyn52 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


returnM :: a -> Err a
returnM = return

thenM :: Err a -> (a -> Err b) -> Err b
thenM = (>>=)

happyError :: [Token] -> Err a
happyError ts =
  Bad $ "syntax error at " ++ tokenPos ts ++ 
  case ts of
    [] -> []
    [Err _] -> " due to lexer error"
    _ -> " before " ++ unwords (map (id . prToken) (take 4 ts))

myLexer = tokens
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 16 "<built-in>" #-}
{-# LINE 1 "/Library/Frameworks/GHC.framework/Versions/8.0.1-x86_64/usr/lib/ghc-8.0.1/include/ghcversion.h" #-}


















{-# LINE 17 "<built-in>" #-}
{-# LINE 1 "/var/folders/p8/hfww7gf51tj4107c1x9dbrl40000gn/T/ghc55015_0/ghc_2.h" #-}















































































































































































































































































































































































































































































{-# LINE 18 "<built-in>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 


{-# LINE 13 "templates/GenericTemplate.hs" #-}


{-# LINE 46 "templates/GenericTemplate.hs" #-}









{-# LINE 67 "templates/GenericTemplate.hs" #-}


{-# LINE 77 "templates/GenericTemplate.hs" #-}










infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action


{-# LINE 155 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.

