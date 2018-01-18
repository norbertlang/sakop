package de.itemis.sakop.scoping

import com.google.inject.Inject
import de.itemis.sakop.infoModelDSL.InfoModelDSLPackage
import org.eclipse.emf.ecore.EObject
import org.eclipse.xtext.resource.impl.ResourceDescriptionsProvider

class InfoModelDSLIndex {
	@Inject ResourceDescriptionsProvider rdp
	
	def getResourceDescription(EObject o){
		val index = rdp.getResourceDescriptions(o.eResource)
		index.getResourceDescription(o.eResource.URI)
	}
	
	def getExportedEObjectDescriptions(EObject o){
		o.resourceDescription.exportedObjects
	}
	
	def getExportedInformationModelsEObjectDescriptions(EObject o){
		o.resourceDescription.getExportedObjectsByType(InfoModelDSLPackage.eINSTANCE.informationModel)
	}
}