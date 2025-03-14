// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from
  BlockExpr x, string hasLabel, int getNumberOfAttrs, string isAsync, string isConst, string isGen,
  string isMove, string isTry, string isUnsafe, string hasStmtList
where
  toBeTested(x) and
  not x.isUnknown() and
  (if x.hasLabel() then hasLabel = "yes" else hasLabel = "no") and
  getNumberOfAttrs = x.getNumberOfAttrs() and
  (if x.isAsync() then isAsync = "yes" else isAsync = "no") and
  (if x.isConst() then isConst = "yes" else isConst = "no") and
  (if x.isGen() then isGen = "yes" else isGen = "no") and
  (if x.isMove() then isMove = "yes" else isMove = "no") and
  (if x.isTry() then isTry = "yes" else isTry = "no") and
  (if x.isUnsafe() then isUnsafe = "yes" else isUnsafe = "no") and
  if x.hasStmtList() then hasStmtList = "yes" else hasStmtList = "no"
select x, "hasLabel:", hasLabel, "getNumberOfAttrs:", getNumberOfAttrs, "isAsync:", isAsync,
  "isConst:", isConst, "isGen:", isGen, "isMove:", isMove, "isTry:", isTry, "isUnsafe:", isUnsafe,
  "hasStmtList:", hasStmtList
