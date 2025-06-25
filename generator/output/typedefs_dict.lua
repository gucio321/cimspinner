local defs = {}
defs["Emphasis"] = "struct Emphasis"
defs["Line"] = "struct Line"
defs["Link"] = "struct Link"
defs["MarkdownConfig"] = "struct MarkdownConfig"
defs["MarkdownFormalCallback"] = "void MarkdownFormalCallback(const MarkdownFormatInfo& markdownFormatInfo_,bool start_);"
defs["MarkdownFormatInfo"] = "struct MarkdownFormatInfo"
defs["MarkdownHeadingFormat"] = "struct MarkdownHeadingFormat"
defs["MarkdownImageCallback"] = "MarkdownImageData MarkdownImageCallback(MarkdownLinkCallbackData data);"
defs["MarkdownImageData"] = "struct MarkdownImageData"
defs["MarkdownLinkCallback"] = "void MarkdownLinkCallback(MarkdownLinkCallbackData data);"
defs["MarkdownLinkCallbackData"] = "struct MarkdownLinkCallbackData"
defs["MarkdownTooltipCallback"] = "void MarkdownTooltipCallback(MarkdownTooltipCallbackData data);"
defs["MarkdownTooltipCallbackData"] = "struct MarkdownTooltipCallbackData"
defs["TextBlock"] = "struct TextBlock"
defs["TextRegion"] = "struct TextRegion"

return defs