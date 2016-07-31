# colorguide
# seti-syntax
# syntax custom variable definitions

cgVarColor = require '../../../colorguide/lib/cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPsc0: {key: 'GRPsc0', value:    0, description: 'Syntax'}
      GRPsc1: {key: 'GRPsc1', value:    0, description: 'Syntax'}
    }

  categories: () ->
    {
      CATsc0: {key: 'CATsc0', value: 0, description: 'Gutter'}
      CATsc1: {key: 'CATsc1', value: 1, description: 'Code View'}
      CATsc2: {key: 'CATsc2', value: 2, description: 'Status'}
      CATsc3: {key: 'CATsc3', value: 3, description: 'Git Status'}
      CATsc4: {key: 'CATsc4', value: 4, description: 'Text'}
      CATsc5: {key: 'CATsc5', value: 5, description: 'Search'}
      CATsc6: {key: 'CATsc6', value: 6, description: 'Syntax Colors'}
      CATsc7: {key: 'CATsc7', value: 7, description: 'Objects'}
      CATsc8: {key: 'CATsc8', value: 8, description: 'Constant'}
      CATsc9: {key: 'CATsc9', value: 9, description: 'Entity'}
      CATsc10: {key: 'CATsc10', value: 10, description: 'Meta'}
      CATsc11: {key: 'CATsc11', value: 11, description: 'String'}
      CATsc12: {key: 'CATsc12', value: 12, description: 'Storage'}
      CATsc13: {key: 'CATsc13', value: 13, description: 'Keyword'}
      CATsc14: {key: 'CATsc14', value: 14, description: 'Support'}
      CATsc15: {key: 'CATsc15', value: 15, description: 'Variable'}
      CATsc16: {key: 'CATsc16', value: 16, description: 'Punctuation'}
      CATsc17: {key: 'CATsc17', value: 17, description: 'HTML'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        # GUTTER
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc0.key, 'gutter-text', '')
        new cgVarColor(0.020, g.GRPsc0.key, c.CATsc0.key, 'gutter-text-highlight', '')
        new cgVarColor(0.030, g.GRPsc0.key, c.CATsc0.key, 'gutter-background', '')
        new cgVarColor(0.040, g.GRPsc0.key, c.CATsc0.key, 'gutter-background-highlight', '')
        # CODE VIEW
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc1.key, 'code-background', '')
        new cgVarColor(0.020, g.GRPsc0.key, c.CATsc1.key, 'code-font-color', '')
        # STATUS
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc2.key, 'error', '')
        new cgVarColor(0.020, g.GRPsc0.key, c.CATsc2.key, 'info', '')
        new cgVarColor(0.030, g.GRPsc0.key, c.CATsc2.key, 'success', '')
        # GIT STATUS
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc3.key, 'removed', '')
        new cgVarColor(0.020, g.GRPsc0.key, c.CATsc3.key, 'modified', '')
        new cgVarColor(0.030, g.GRPsc0.key, c.CATsc3.key, 'added', '')
        # TEXT
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc4.key, 'quotes', '')
        new cgVarColor(0.020, g.GRPsc0.key, c.CATsc4.key, 'markup', '')
        new cgVarColor(0.030, g.GRPsc0.key, c.CATsc4.key, 'unknown', '')
        # SEARCH
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc5.key, 'search-bg', '')
        new cgVarColor(0.020, g.GRPsc0.key, c.CATsc5.key, 'search-border', '')
        new cgVarColor(0.030, g.GRPsc0.key, c.CATsc5.key, 'search-active-bg', '')
        new cgVarColor(0.040, g.GRPsc0.key, c.CATsc5.key, 'search-active-border', '')
        new cgVarColor(0.050, g.GRPsc0.key, c.CATsc5.key, 'search-item-border', '')
        new cgVarColor(0.060, g.GRPsc0.key, c.CATsc5.key, 'search-item-bg', '')
        # SYNTAX COLORS
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc6.key, 'brackets', '')
        new cgVarColor(0.020, g.GRPsc0.key, c.CATsc6.key, 'comment', '')
        new cgVarColor(0.030, g.GRPsc0.key, c.CATsc6.key, 'comment-bg', '')
        new cgVarColor(0.040, g.GRPsc0.key, c.CATsc6.key, 'comment-punc', '')
        new cgVarColor(0.050, g.GRPsc0.key, c.CATsc6.key, 'constant', '')
        new cgVarColor(0.060, g.GRPsc0.key, c.CATsc6.key, 'entity', '')
        new cgVarColor(0.070, g.GRPsc0.key, c.CATsc6.key, 'entity-function', '')
        new cgVarColor(0.080, g.GRPsc0.key, c.CATsc6.key, 'function', '')
        new cgVarColor(0.090, g.GRPsc0.key, c.CATsc6.key, 'function-param', '')
        new cgVarColor(0.100, g.GRPsc0.key, c.CATsc6.key, 'meta', '')
        new cgVarColor(0.110, g.GRPsc0.key, c.CATsc6.key, 'numeric', '')
        new cgVarColor(0.120, g.GRPsc0.key, c.CATsc6.key, 'punctuation', '')
        new cgVarColor(0.130, g.GRPsc0.key, c.CATsc6.key, 'regex', '')
        new cgVarColor(0.140, g.GRPsc0.key, c.CATsc6.key, 'string', '')
        new cgVarColor(0.150, g.GRPsc0.key, c.CATsc6.key, 'storage', '')
        new cgVarColor(0.160, g.GRPsc0.key, c.CATsc6.key, 'support', '')
        new cgVarColor(0.170, g.GRPsc0.key, c.CATsc6.key, 'variable', '')
        new cgVarColor(0.180, g.GRPsc0.key, c.CATsc6.key, 'storage-function', '')
        # OBJECTS
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc7.key, 'obj-name', '')
        new cgVarColor(0.020, g.GRPsc0.key, c.CATsc7.key, 'obj-method', '')
        new cgVarColor(0.030, g.GRPsc0.key, c.CATsc7.key, 'obj-function', '')
        # CONSTANT
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc8.key, 'constant-name-attribute-tag', '')
        # ENTITY
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc9.key, 'entity-name-tag', '')
        new cgVarColor(0.020, g.GRPsc0.key, c.CATsc9.key, 'entity-name-type', '')
        new cgVarColor(0.030, g.GRPsc0.key, c.CATsc9.key, 'entity-name-function', '')
        new cgVarColor(0.040, g.GRPsc0.key, c.CATsc9.key, 'entity-other-attribute-name', '')
        new cgVarColor(0.050, g.GRPsc0.key, c.CATsc9.key, 'entity-other-id', '')
        # META
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc10.key, 'meta-control-flow', '')
        # STRING
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc11.key, 'string-quoted-double', '')
        new cgVarColor(0.020, g.GRPsc0.key, c.CATsc11.key, 'string-quoted-single', '')
        # STORAGE
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc12.key, 'storage-var', '')
        new cgVarColor(0.020, g.GRPsc0.key, c.CATsc12.key, 'storage-class', '')
        new cgVarColor(0.030, g.GRPsc0.key, c.CATsc12.key, 'storage-function', '')
        # KEYWORD
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc13.key, 'keyword', '')
        new cgVarColor(0.020, g.GRPsc0.key, c.CATsc13.key, 'keyword-control', '')
        new cgVarColor(0.030, g.GRPsc0.key, c.CATsc13.key, 'keyword-other-important', '')
        new cgVarColor(0.040, g.GRPsc0.key, c.CATsc13.key, 'keyword-operator', '')
        new cgVarColor(0.050, g.GRPsc0.key, c.CATsc13.key, 'keyword-operator-assignment', '')
        new cgVarColor(0.060, g.GRPsc0.key, c.CATsc13.key, 'keyword-operator-new', '')
        new cgVarColor(0.070, g.GRPsc0.key, c.CATsc13.key, 'variable-import', '')
        # SUPPORT
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc14.key, 'support-type-property-name', '')
        new cgVarColor(0.020, g.GRPsc0.key, c.CATsc14.key, 'support-function-decl', '')
        # VARIABLE
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc15.key, 'variable', '')
        new cgVarColor(0.020, g.GRPsc0.key, c.CATsc15.key, 'variable-other', '')
        new cgVarColor(0.030, g.GRPsc0.key, c.CATsc15.key, 'variable-other-module', '')
        new cgVarColor(0.040, g.GRPsc0.key, c.CATsc15.key, 'variable-other-module-alias', '')
        new cgVarColor(0.050, g.GRPsc0.key, c.CATsc15.key, 'variable-other-object', '')
        new cgVarColor(0.060, g.GRPsc0.key, c.CATsc15.key, 'variable-other-property', '')
        # PUNCTUATION
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc16.key, 'punctuation', '')
        new cgVarColor(0.020, g.GRPsc0.key, c.CATsc16.key, 'punctuation-separator', '')
        new cgVarColor(0.030, g.GRPsc0.key, c.CATsc16.key, 'punctuation-definition-array', '')
        new cgVarColor(0.040, g.GRPsc0.key, c.CATsc16.key, 'punctuation-definition-string', '')
        new cgVarColor(0.050, g.GRPsc0.key, c.CATsc16.key, 'punctuation-definition-variable', '')
        # HTML
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc17.key, 'tag', '')
        new cgVarColor(0.020, g.GRPsc0.key, c.CATsc17.key, 'tag-entity', '')
        new cgVarColor(0.030, g.GRPsc0.key, c.CATsc17.key, 'element-attr', '')
        new cgVarColor(0.040, g.GRPsc0.key, c.CATsc17.key, 'class', '')
        new cgVarColor(0.050, g.GRPsc0.key, c.CATsc17.key, 'id', '')
        new cgVarColor(0.060, g.GRPsc0.key, c.CATsc17.key, 'block', '')
        new cgVarColor(0.070, g.GRPsc0.key, c.CATsc17.key, 'inline', '')
      ]
    }
