package de.itemis.sakop

import de.itemis.sakop.infoModelDSL.Controller
import de.itemis.sakop.infoModelDSL.InformationModel
import de.itemis.sakop.infoModelDSL.Line

class InfoModelDSLUtil {
	
	def mesystems(InformationModel model){
		model.parts.filter(Controller)
	}
	
//	def meSubSystemsTotal(InformationModel model){
//		model.parts.filter(MESystem).map[subsystems].flatten
//	}
	
	def factories(InformationModel model){
		model.parts.filter(Line)
	}
	
	def machinesAll(InformationModel model){
		model.parts.filter(Line).map[endpoints].flatten
	}
	
//	def messages(DataModel model){
//		model.elements
//	}
	
}