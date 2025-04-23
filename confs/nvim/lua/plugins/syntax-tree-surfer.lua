return {
   "ziontee113/syntax-tree-surfer",
   lazy=false,
   config = function()
      require("syntax-tree-surfer").setup({
         highlight_group = "STS_highlight",
         disable_no_instance_found_report = false,
         default_desired_types = {
            "function",
            "arrow_function",
            "function_definition",
            "if_statement",
            "else_clause",
            "else_statement",
            "elseif_statement",
            "for_statement",
            "while_statement",
            "switch_statement",
         },
         left_hand_side = "fdsawervcxqtzb",
         right_hand_side = "jkl;oiu.,mpy/n",
         icon_dictionary = {
            ["if_statement"] = "",
            ["else_clause"] = "",
            ["else_statement"] = "",
            ["elseif_statement"] = "",
            ["for_statement"] = "ﭜ",
            ["while_statement"] = "ﯩ",
            ["switch_statement"] = "ﳟ",
            ["function"] = "",
            ["function_definition"] = "",
            ["variable_declaration"] = "",
         },
      })
   end
}
