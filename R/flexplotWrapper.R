#
# Copyright (C) 2013-2022 University of Amsterdam
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# This is a generated file. Don't change it

flexplot <- function(
          data = NULL,
          version = "0.18.3",
          formula = NULL,
          alpha = 0.4,
          bw = FALSE,
          confidence = FALSE,
          dependent = "",
          ghost = TRUE,
          intervals = "Quartiles",
          jitx = 0.1,
          jity = 0,
          nameCols = "",
          nameLegend = "",
          nameRows = "",
          nameX = "",
          nameY = "",
          palette = "GGplot Default",
          paneledVars = list(),
          plotHeight = 320,
          plotWidth = 480,
          theme = "JASP",
          type = "Loess",
          variables = list()) {

   defaultArgCalls <- formals(jaspVisualModeling::flexplot)
   defaultArgs <- lapply(defaultArgCalls, eval)
   options <- as.list(match.call())[-1L]
   options <- lapply(options, eval)
   defaults <- setdiff(names(defaultArgs), names(options))
   options[defaults] <- defaultArgs[defaults]
   options[["data"]] <- NULL
   options[["version"]] <- NULL

   if (!is.null(formula)) {
      if (!inherits(formula, "formula")) {
         formula <- as.formula(formula)
      }
      options$formula <- jaspBase::jaspFormula(formula, data)
   }

   optionsWithFormula <- c("dependent", "intervals", "palette", "paneledVars", "theme", "type", "variables")
   for (name in optionsWithFormula) {
      if ((name %in% optionsWithFormula) && inherits(options[[name]], "formula")) options[[name]] = jaspBase::jaspFormula(options[[name]], data)   }

   return(jaspBase::runWrappedAnalysis("jaspVisualModeling::flexplot", data, options, version))
}
