.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda16;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda16;->f$0:Ljava/util/function/Consumer;

    invoke-static {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->$r8$lambda$ZV_nYQISLkHwe1V7fRucBxkxIdI(Ljava/util/function/Consumer;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
