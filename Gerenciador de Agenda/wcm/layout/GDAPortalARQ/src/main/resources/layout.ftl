<#import "/wcm.ftl" as wcm />

<#-- Variaveis globais para os layouts -->
<#import "/layout-globals.ftl" as globals />
<!-- layout ECM-DEFAULT-DASHBOARD -->
<div class="wcm-wrapper-content ${wcmLayoutEditClass!""} ${pageAuthTypeClass!""}">
				<!-- Slot 1 -->
	            <div id="divSlot1" class="editable-slot slotfull layout-2-3left">
					<@wcm.renderSlot id="SlotA" editableSlot="true" isResponsiveSlot="true" />
				</div>
</div>