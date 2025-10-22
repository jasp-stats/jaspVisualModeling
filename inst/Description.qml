import QtQuick
import JASP.Module

Description
{
	title :         qsTr("Visual Modeling")
	description:    qsTr("Graphically explore the dependencies between variables")
	icon:           "FlexplotLogo.svg"
	hasWrappers: 	false
	
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
