# colorguide
# gl-dark-syntax
# syntax custom color definitions


cgVarColor = require '../../../colorguide/lib/cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPscx0: {key: 'GRPscx0', value:    0, description: 'Basic Colors'}
      GRPscx1: {key: 'GRPscx1', value: 1000, description: 'Google Guide Colors'}
    }

  categories: () ->
    {
      CATscx0: {key: 'CATscx0', value:     0, description: 'Base Colors'}
      CATscx1: {key: 'CATscx1', value:    10, description: 'Monochrome Colors'}
      CATscx2: {key: 'CATscx2', value:    20, description: 'Hue Colors'}
      CATscx10: {key: 'CATscx10', value: 100, description: 'Neutral Colors'}
      CATscx11: {key: 'CATscx11', value: 110, description: 'Red Colors'}
      CATscx12: {key: 'CATscx12', value: 120, description: 'Orange Colors'}
      CATscx13: {key: 'CATscx13', value: 130, description: 'Yellow Colors'}
      CATscx14: {key: 'CATscx14', value: 140, description: 'Green Colors'}
      CATscx15: {key: 'CATscx15', value: 150, description: 'Blue Colors'}
      CATscx16: {key: 'CATscx16', value: 160, description: 'Cyan Colors'}
      CATscx17: {key: 'CATscx17', value: 170, description: 'Magenta Colors'}
      CATscx18: {key: 'CATscx18', value: 180, description: 'Brown Colors'}
      CATscx19: {key: 'CATscx19', value: 190, description: 'Gray Colors'}

    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        # Base colors
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx0.key, 'syntax-accent','')
        new cgVarColor(0.020, g.GRPscx0.key, c.CATscx0.key, 'syntax-guide','')
        new cgVarColor(0.030, g.GRPscx0.key, c.CATscx0.key, 'syntax-fg','')
        new cgVarColor(0.040, g.GRPscx0.key, c.CATscx0.key, 'syntax-gutter','')
        new cgVarColor(0.050, g.GRPscx0.key, c.CATscx0.key, 'syntax-bg','')
        # Monochrome
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx1.key, 'mono-1','')
        new cgVarColor(0.020, g.GRPscx0.key, c.CATscx1.key, 'mono-2','')
        new cgVarColor(0.030, g.GRPscx0.key, c.CATscx1.key, 'mono-3','')
        # Colors
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx2.key, 'hue-1','')
        new cgVarColor(0.020, g.GRPscx0.key, c.CATscx2.key, 'hue-2','')
        new cgVarColor(0.030, g.GRPscx0.key, c.CATscx2.key, 'hue-3','')
        new cgVarColor(0.040, g.GRPscx0.key, c.CATscx2.key, 'hue-4','')
        new cgVarColor(0.050, g.GRPscx0.key, c.CATscx2.key, 'hue-5','')
        new cgVarColor(0.052, g.GRPscx0.key, c.CATscx2.key, 'hue-5-2','')
        new cgVarColor(0.060, g.GRPscx0.key, c.CATscx2.key, 'hue-6','')
        new cgVarColor(0.062, g.GRPscx0.key, c.CATscx2.key, 'hue-6-2','')
        # Google Guide
        # neutral
        new cgVarColor(0.010, g.GRPscx1.key, c.CATscx10.key, 'black_1000','')
        new cgVarColor(0.020, g.GRPscx1.key, c.CATscx10.key, 'white_1000','')
        # red
        new cgVarColor(0.005, g.GRPscx1.key, c.CATscx11.key, 'red_50','')
        new cgVarColor(0.010, g.GRPscx1.key, c.CATscx11.key, 'red_100','')
        new cgVarColor(0.040, g.GRPscx1.key, c.CATscx11.key, 'red_200','')
        new cgVarColor(0.030, g.GRPscx1.key, c.CATscx11.key, 'red_300','')
        new cgVarColor(0.040, g.GRPscx1.key, c.CATscx11.key, 'red_400','')
        new cgVarColor(0.050, g.GRPscx1.key, c.CATscx11.key, 'red_500','')
        new cgVarColor(0.060, g.GRPscx1.key, c.CATscx11.key, 'red_600','')
        new cgVarColor(0.070, g.GRPscx1.key, c.CATscx11.key, 'red_700','')
        new cgVarColor(0.080, g.GRPscx1.key, c.CATscx11.key, 'red_800','')
        new cgVarColor(0.090, g.GRPscx1.key, c.CATscx11.key, 'red_900','')
        new cgVarColor(0.205, g.GRPscx1.key, c.CATscx11.key, 'pink_50','')
        new cgVarColor(0.230, g.GRPscx1.key, c.CATscx11.key, 'pink_100','')
        new cgVarColor(0.240, g.GRPscx1.key, c.CATscx11.key, 'pink_200','')
        new cgVarColor(0.230, g.GRPscx1.key, c.CATscx11.key, 'pink_300','')
        new cgVarColor(0.240, g.GRPscx1.key, c.CATscx11.key, 'pink_400','')
        new cgVarColor(0.250, g.GRPscx1.key, c.CATscx11.key, 'pink_500','')
        new cgVarColor(0.260, g.GRPscx1.key, c.CATscx11.key, 'pink_600','')
        new cgVarColor(0.270, g.GRPscx1.key, c.CATscx11.key, 'pink_700','')
        new cgVarColor(0.280, g.GRPscx1.key, c.CATscx11.key, 'pink_800','')
        new cgVarColor(0.290, g.GRPscx1.key, c.CATscx11.key, 'pink_900','')
        # orange
        new cgVarColor(0.005, g.GRPscx1.key, c.CATscx12.key, 'orange_50','')
        new cgVarColor(0.010, g.GRPscx1.key, c.CATscx12.key, 'orange_100','')
        new cgVarColor(0.020, g.GRPscx1.key, c.CATscx12.key, 'orange_200','')
        new cgVarColor(0.030, g.GRPscx1.key, c.CATscx12.key, 'orange_300','')
        new cgVarColor(0.040, g.GRPscx1.key, c.CATscx12.key, 'orange_400','')
        new cgVarColor(0.050, g.GRPscx1.key, c.CATscx12.key, 'orange_500','')
        new cgVarColor(0.060, g.GRPscx1.key, c.CATscx12.key, 'orange_600','')
        new cgVarColor(0.070, g.GRPscx1.key, c.CATscx12.key, 'orange_700','')
        new cgVarColor(0.080, g.GRPscx1.key, c.CATscx12.key, 'orange_800','')
        new cgVarColor(0.090, g.GRPscx1.key, c.CATscx12.key, 'orange_900','')
        new cgVarColor(0.205, g.GRPscx1.key, c.CATscx12.key, 'deep_orange_50','')
        new cgVarColor(0.210, g.GRPscx1.key, c.CATscx12.key, 'deep_orange_100','')
        new cgVarColor(0.220, g.GRPscx1.key, c.CATscx12.key, 'deep_orange_200','')
        new cgVarColor(0.230, g.GRPscx1.key, c.CATscx12.key, 'deep_orange_300','')
        new cgVarColor(0.240, g.GRPscx1.key, c.CATscx12.key, 'deep_orange_400','')
        new cgVarColor(0.250, g.GRPscx1.key, c.CATscx12.key, 'deep_orange_500','')
        new cgVarColor(0.260, g.GRPscx1.key, c.CATscx12.key, 'deep_orange_600','')
        new cgVarColor(0.270, g.GRPscx1.key, c.CATscx12.key, 'deep_orange_700','')
        new cgVarColor(0.280, g.GRPscx1.key, c.CATscx12.key, 'deep_orange_800','')
        new cgVarColor(0.290, g.GRPscx1.key, c.CATscx12.key, 'deep_orange_900','')
        # yellow
        new cgVarColor(0.005, g.GRPscx1.key, c.CATscx13.key, 'yellow_50','')
        new cgVarColor(0.010, g.GRPscx1.key, c.CATscx13.key, 'yellow_100','')
        new cgVarColor(0.020, g.GRPscx1.key, c.CATscx13.key, 'yellow_200','')
        new cgVarColor(0.030, g.GRPscx1.key, c.CATscx13.key, 'yellow_300','')
        new cgVarColor(0.040, g.GRPscx1.key, c.CATscx13.key, 'yellow_400','')
        new cgVarColor(0.050, g.GRPscx1.key, c.CATscx13.key, 'yellow_500','')
        new cgVarColor(0.060, g.GRPscx1.key, c.CATscx13.key, 'yellow_600','')
        new cgVarColor(0.070, g.GRPscx1.key, c.CATscx13.key, 'yellow_700','')
        new cgVarColor(0.080, g.GRPscx1.key, c.CATscx13.key, 'yellow_800','')
        new cgVarColor(0.090, g.GRPscx1.key, c.CATscx13.key, 'yellow_900','')
        new cgVarColor(0.205, g.GRPscx1.key, c.CATscx13.key, 'amber_50','')
        new cgVarColor(0.210, g.GRPscx1.key, c.CATscx13.key, 'amber_100','')
        new cgVarColor(0.220, g.GRPscx1.key, c.CATscx13.key, 'amber_200','')
        new cgVarColor(0.230, g.GRPscx1.key, c.CATscx13.key, 'amber_300','')
        new cgVarColor(0.240, g.GRPscx1.key, c.CATscx13.key, 'amber_400','')
        new cgVarColor(0.250, g.GRPscx1.key, c.CATscx13.key, 'amber_500','')
        new cgVarColor(0.260, g.GRPscx1.key, c.CATscx13.key, 'amber_600','')
        new cgVarColor(0.270, g.GRPscx1.key, c.CATscx13.key, 'amber_700','')
        new cgVarColor(0.280, g.GRPscx1.key, c.CATscx13.key, 'amber_800','')
        new cgVarColor(0.290, g.GRPscx1.key, c.CATscx13.key, 'amber_900','')
        # green
        new cgVarColor(0.005, g.GRPscx1.key, c.CATscx14.key, 'teal_50','')
        new cgVarColor(0.010, g.GRPscx1.key, c.CATscx14.key, 'teal_100','')
        new cgVarColor(0.020, g.GRPscx1.key, c.CATscx14.key, 'teal_200','')
        new cgVarColor(0.030, g.GRPscx1.key, c.CATscx14.key, 'teal_300','')
        new cgVarColor(0.040, g.GRPscx1.key, c.CATscx14.key, 'teal_400','')
        new cgVarColor(0.050, g.GRPscx1.key, c.CATscx14.key, 'teal_500','')
        new cgVarColor(0.060, g.GRPscx1.key, c.CATscx14.key, 'teal_600','')
        new cgVarColor(0.070, g.GRPscx1.key, c.CATscx14.key, 'teal_700','')
        new cgVarColor(0.080, g.GRPscx1.key, c.CATscx14.key, 'teal_800','')
        new cgVarColor(0.090, g.GRPscx1.key, c.CATscx14.key, 'teal_900','')
        new cgVarColor(0.205, g.GRPscx1.key, c.CATscx14.key, 'green_50','')
        new cgVarColor(0.210, g.GRPscx1.key, c.CATscx14.key, 'green_100','')
        new cgVarColor(0.220, g.GRPscx1.key, c.CATscx14.key, 'green_200','')
        new cgVarColor(0.230, g.GRPscx1.key, c.CATscx14.key, 'green_300','')
        new cgVarColor(0.240, g.GRPscx1.key, c.CATscx14.key, 'green_400','')
        new cgVarColor(0.250, g.GRPscx1.key, c.CATscx14.key, 'green_500','')
        new cgVarColor(0.260, g.GRPscx1.key, c.CATscx14.key, 'green_600','')
        new cgVarColor(0.270, g.GRPscx1.key, c.CATscx14.key, 'green_700','')
        new cgVarColor(0.280, g.GRPscx1.key, c.CATscx14.key, 'green_800','')
        new cgVarColor(0.290, g.GRPscx1.key, c.CATscx14.key, 'green_900','')
        new cgVarColor(0.605, g.GRPscx1.key, c.CATscx14.key, 'light_green_50','')
        new cgVarColor(0.610, g.GRPscx1.key, c.CATscx14.key, 'light_green_100','')
        new cgVarColor(0.620, g.GRPscx1.key, c.CATscx14.key, 'light_green_200','')
        new cgVarColor(0.630, g.GRPscx1.key, c.CATscx14.key, 'light_green_300','')
        new cgVarColor(0.640, g.GRPscx1.key, c.CATscx14.key, 'light_green_400','')
        new cgVarColor(0.650, g.GRPscx1.key, c.CATscx14.key, 'light_green_500','')
        new cgVarColor(0.660, g.GRPscx1.key, c.CATscx14.key, 'light_green_600','')
        new cgVarColor(0.670, g.GRPscx1.key, c.CATscx14.key, 'light_green_700','')
        new cgVarColor(0.680, g.GRPscx1.key, c.CATscx14.key, 'light_green_800','')
        new cgVarColor(0.690, g.GRPscx1.key, c.CATscx14.key, 'light_green_900','')
        new cgVarColor(0.805, g.GRPscx1.key, c.CATscx14.key, 'lime_50','')
        new cgVarColor(0.810, g.GRPscx1.key, c.CATscx14.key, 'lime_100','')
        new cgVarColor(0.820, g.GRPscx1.key, c.CATscx14.key, 'lime_200','')
        new cgVarColor(0.830, g.GRPscx1.key, c.CATscx14.key, 'lime_300','')
        new cgVarColor(0.840, g.GRPscx1.key, c.CATscx14.key, 'lime_400','')
        new cgVarColor(0.850, g.GRPscx1.key, c.CATscx14.key, 'lime_500','')
        new cgVarColor(0.860, g.GRPscx1.key, c.CATscx14.key, 'lime_600','')
        new cgVarColor(0.870, g.GRPscx1.key, c.CATscx14.key, 'lime_700','')
        new cgVarColor(0.880, g.GRPscx1.key, c.CATscx14.key, 'lime_800','')
        new cgVarColor(0.890, g.GRPscx1.key, c.CATscx14.key, 'lime_900','')
        # blue
        new cgVarColor(0.005, g.GRPscx1.key, c.CATscx15.key, 'indigo_50','')
        new cgVarColor(0.010, g.GRPscx1.key, c.CATscx15.key, 'indigo_100','')
        new cgVarColor(0.020, g.GRPscx1.key, c.CATscx15.key, 'indigo_200','')
        new cgVarColor(0.030, g.GRPscx1.key, c.CATscx15.key, 'indigo_300','')
        new cgVarColor(0.040, g.GRPscx1.key, c.CATscx15.key, 'indigo_400','')
        new cgVarColor(0.050, g.GRPscx1.key, c.CATscx15.key, 'indigo_500','')
        new cgVarColor(0.060, g.GRPscx1.key, c.CATscx15.key, 'indigo_600','')
        new cgVarColor(0.070, g.GRPscx1.key, c.CATscx15.key, 'indigo_700','')
        new cgVarColor(0.080, g.GRPscx1.key, c.CATscx15.key, 'indigo_800','')
        new cgVarColor(0.090, g.GRPscx1.key, c.CATscx15.key, 'indigo_900','')
        new cgVarColor(0.205, g.GRPscx1.key, c.CATscx15.key, 'blue_50','')
        new cgVarColor(0.210, g.GRPscx1.key, c.CATscx15.key, 'blue_100','')
        new cgVarColor(0.220, g.GRPscx1.key, c.CATscx15.key, 'blue_200','')
        new cgVarColor(0.230, g.GRPscx1.key, c.CATscx15.key, 'blue_300','')
        new cgVarColor(0.240, g.GRPscx1.key, c.CATscx15.key, 'blue_400','')
        new cgVarColor(0.250, g.GRPscx1.key, c.CATscx15.key, 'blue_500','')
        new cgVarColor(0.260, g.GRPscx1.key, c.CATscx15.key, 'blue_600','')
        new cgVarColor(0.270, g.GRPscx1.key, c.CATscx15.key, 'blue_700','')
        new cgVarColor(0.280, g.GRPscx1.key, c.CATscx15.key, 'blue_800','')
        new cgVarColor(0.290, g.GRPscx1.key, c.CATscx15.key, 'blue_900','')
        new cgVarColor(0.405, g.GRPscx1.key, c.CATscx15.key, 'light_blue_50','')
        new cgVarColor(0.410, g.GRPscx1.key, c.CATscx15.key, 'light_blue_100','')
        new cgVarColor(0.420, g.GRPscx1.key, c.CATscx15.key, 'light_blue_200','')
        new cgVarColor(0.430, g.GRPscx1.key, c.CATscx15.key, 'light_blue_300','')
        new cgVarColor(0.440, g.GRPscx1.key, c.CATscx15.key, 'light_blue_400','')
        new cgVarColor(0.450, g.GRPscx1.key, c.CATscx15.key, 'light_blue_500','')
        new cgVarColor(0.460, g.GRPscx1.key, c.CATscx15.key, 'light_blue_600','')
        new cgVarColor(0.470, g.GRPscx1.key, c.CATscx15.key, 'light_blue_700','')
        new cgVarColor(0.480, g.GRPscx1.key, c.CATscx15.key, 'light_blue_800','')
        new cgVarColor(0.490, g.GRPscx1.key, c.CATscx15.key, 'light_blue_900','')
        # cyan
        new cgVarColor(0.005, g.GRPscx1.key, c.CATscx16.key, 'cyan_50','')
        new cgVarColor(0.010, g.GRPscx1.key, c.CATscx16.key, 'cyan_100','')
        new cgVarColor(0.020, g.GRPscx1.key, c.CATscx16.key, 'cyan_200','')
        new cgVarColor(0.030, g.GRPscx1.key, c.CATscx16.key, 'cyan_300','')
        new cgVarColor(0.040, g.GRPscx1.key, c.CATscx16.key, 'cyan_400','')
        new cgVarColor(0.050, g.GRPscx1.key, c.CATscx16.key, 'cyan_500','')
        new cgVarColor(0.060, g.GRPscx1.key, c.CATscx16.key, 'cyan_600','')
        new cgVarColor(0.070, g.GRPscx1.key, c.CATscx16.key, 'cyan_700','')
        new cgVarColor(0.080, g.GRPscx1.key, c.CATscx16.key, 'cyan_800','')
        new cgVarColor(0.090, g.GRPscx1.key, c.CATscx16.key, 'cyan_900','')
        # magenta
        new cgVarColor(0.005, g.GRPscx1.key, c.CATscx17.key, 'purple_50','')
        new cgVarColor(0.010, g.GRPscx1.key, c.CATscx17.key, 'purple_100','')
        new cgVarColor(0.020, g.GRPscx1.key, c.CATscx17.key, 'purple_200','')
        new cgVarColor(0.030, g.GRPscx1.key, c.CATscx17.key, 'purple_300','')
        new cgVarColor(0.040, g.GRPscx1.key, c.CATscx17.key, 'purple_400','')
        new cgVarColor(0.050, g.GRPscx1.key, c.CATscx17.key, 'purple_500','')
        new cgVarColor(0.060, g.GRPscx1.key, c.CATscx17.key, 'purple_600','')
        new cgVarColor(0.070, g.GRPscx1.key, c.CATscx17.key, 'purple_700','')
        new cgVarColor(0.080, g.GRPscx1.key, c.CATscx17.key, 'purple_800','')
        new cgVarColor(0.090, g.GRPscx1.key, c.CATscx17.key, 'purple_900','')
        new cgVarColor(0.205, g.GRPscx1.key, c.CATscx17.key, 'dark_purple_50','')
        new cgVarColor(0.210, g.GRPscx1.key, c.CATscx17.key, 'dark_purple_100','')
        new cgVarColor(0.220, g.GRPscx1.key, c.CATscx17.key, 'dark_purple_200','')
        new cgVarColor(0.230, g.GRPscx1.key, c.CATscx17.key, 'dark_purple_300','')
        new cgVarColor(0.240, g.GRPscx1.key, c.CATscx17.key, 'dark_purple_400','')
        new cgVarColor(0.250, g.GRPscx1.key, c.CATscx17.key, 'dark_purple_500','')
        new cgVarColor(0.260, g.GRPscx1.key, c.CATscx17.key, 'dark_purple_600','')
        new cgVarColor(0.270, g.GRPscx1.key, c.CATscx17.key, 'dark_purple_700','')
        new cgVarColor(0.280, g.GRPscx1.key, c.CATscx17.key, 'dark_purple_800','')
        new cgVarColor(0.290, g.GRPscx1.key, c.CATscx17.key, 'dark_purple_900','')
        # brown
        new cgVarColor(0.005, g.GRPscx1.key, c.CATscx18.key, 'brown_50','')
        new cgVarColor(0.010, g.GRPscx1.key, c.CATscx18.key, 'brown_100','')
        new cgVarColor(0.020, g.GRPscx1.key, c.CATscx18.key, 'brown_200','')
        new cgVarColor(0.030, g.GRPscx1.key, c.CATscx18.key, 'brown_300','')
        new cgVarColor(0.040, g.GRPscx1.key, c.CATscx18.key, 'brown_400','')
        new cgVarColor(0.050, g.GRPscx1.key, c.CATscx18.key, 'brown_500','')
        new cgVarColor(0.060, g.GRPscx1.key, c.CATscx18.key, 'brown_600','')
        new cgVarColor(0.070, g.GRPscx1.key, c.CATscx18.key, 'brown_700','')
        new cgVarColor(0.080, g.GRPscx1.key, c.CATscx18.key, 'brown_800','')
        new cgVarColor(0.090, g.GRPscx1.key, c.CATscx18.key, 'brown_900','')
        # gray
        new cgVarColor(0.005, g.GRPscx1.key, c.CATscx19.key, 'gray_50','')
        new cgVarColor(0.010, g.GRPscx1.key, c.CATscx19.key, 'gray_100','')
        new cgVarColor(0.020, g.GRPscx1.key, c.CATscx19.key, 'gray_200','')
        new cgVarColor(0.030, g.GRPscx1.key, c.CATscx19.key, 'gray_300','')
        new cgVarColor(0.040, g.GRPscx1.key, c.CATscx19.key, 'gray_400','')
        new cgVarColor(0.050, g.GRPscx1.key, c.CATscx19.key, 'gray_500','')
        new cgVarColor(0.060, g.GRPscx1.key, c.CATscx19.key, 'gray_600','')
        new cgVarColor(0.070, g.GRPscx1.key, c.CATscx19.key, 'gray_700','')
        new cgVarColor(0.080, g.GRPscx1.key, c.CATscx19.key, 'gray_800','')
        new cgVarColor(0.090, g.GRPscx1.key, c.CATscx19.key, 'gray_900','')
        new cgVarColor(0.205, g.GRPscx1.key, c.CATscx19.key, 'blue_gray_50','')
        new cgVarColor(0.210, g.GRPscx1.key, c.CATscx19.key, 'blue_gray_100','')
        new cgVarColor(0.220, g.GRPscx1.key, c.CATscx19.key, 'blue_gray_200','')
        new cgVarColor(0.230, g.GRPscx1.key, c.CATscx19.key, 'blue_gray_300','')
        new cgVarColor(0.240, g.GRPscx1.key, c.CATscx19.key, 'blue_gray_400','')
        new cgVarColor(0.250, g.GRPscx1.key, c.CATscx19.key, 'blue_gray_500','')
        new cgVarColor(0.260, g.GRPscx1.key, c.CATscx19.key, 'blue_gray_600','')
        new cgVarColor(0.270, g.GRPscx1.key, c.CATscx19.key, 'blue_gray_700','')
        new cgVarColor(0.280, g.GRPscx1.key, c.CATscx19.key, 'blue_gray_800','')
        new cgVarColor(0.290, g.GRPscx1.key, c.CATscx19.key, 'blue_gray_900','')
      ]
    }
