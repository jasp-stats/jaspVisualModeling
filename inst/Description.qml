import QtQuick
import JASP.Module

Description
{
	title :         qsTr("Visual Modeling")
	name :          "jaspVisualModeling"
	description:    qsTr("Graphically explore the dependencies between variables")
	version			: "0.20.0"
	author:         "Dustin Fife"
	icon:           "FlexplotLogo.svg"
	maintainer:     "Dustin Fife <fife.dustin@gmail.com>"
	website:        "github.com/dustinfife/flexplot"
	license:        "GPL (>= 2)"

	Analysis
	{
		title: 	qsTr("Flexplot")
		qml:   	"Flexplot.qml"
		func:	"flexplot"
		hasWrapper: true
	}

	Analysis
	{
		title:	qsTr("Linear Modeling")
		qml:	"linmod.qml"
		func:	"linmod"
	}

	Analysis
	{
		title:	qsTr("Mixed Modeling")
		qml:	"mixedmod.qml"
		func:	"mixedmod"
	}

	Analysis
	{
		title:	qsTr("Generalized Linear Modeling")
		qml:	"glinmod.qml"
		func:	"glinmod"
	}
}
