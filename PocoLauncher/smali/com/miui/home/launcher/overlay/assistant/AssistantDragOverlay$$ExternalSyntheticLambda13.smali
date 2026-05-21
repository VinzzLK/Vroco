.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

.field public final synthetic f$1:Lcom/miui/home/launcher/Workspace;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/Workspace;ILcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda13;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda13;->f$1:Lcom/miui/home/launcher/Workspace;

    iput p3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda13;->f$2:I

    iput-object p4, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda13;->f$3:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda13;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda13;->f$1:Lcom/miui/home/launcher/Workspace;

    iget v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda13;->f$2:I

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda13;->f$3:Lcom/miui/home/launcher/ItemInfo;

    invoke-static {v0, v1, v2, p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->$r8$lambda$H8EchHs2bleaWIkBUA7u5Qneqcg(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/Workspace;ILcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method
