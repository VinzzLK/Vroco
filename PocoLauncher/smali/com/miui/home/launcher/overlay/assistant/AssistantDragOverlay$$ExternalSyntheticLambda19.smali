.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

.field public final synthetic f$1:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda19;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda19;->f$1:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda19;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda19;->f$1:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->$r8$lambda$ThekyeK7TB64eJAxWR2-il-Pv6A(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Landroid/os/Bundle;)V

    return-void
.end method
