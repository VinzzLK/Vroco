.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

.field public final synthetic f$1:Lcom/miui/home/launcher/DragObject;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda1;->f$1:Lcom/miui/home/launcher/DragObject;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda1;->f$1:Lcom/miui/home/launcher/DragObject;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->$r8$lambda$5VBrr13BeU38bW26Ceh9IQTYq_c(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragObject;Ljava/lang/Boolean;)V

    return-void
.end method
