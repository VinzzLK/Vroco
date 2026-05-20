.class Lcom/miui/home/launcher/Workspace$2;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Workspace;->enterNormalEditingByGesture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 1044
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$2;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1051
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1052
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$2;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v1}, Lcom/miui/home/launcher/Workspace;->access$200(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "pinch"

    .line 1053
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditMode(Ljava/lang/String;)V

    .line 1054
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace$2;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {p0}, Lcom/miui/home/launcher/Workspace;->access$200(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/16 v0, 0x8

    new-instance v1, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v2, "event_pinch_in"

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILcom/miui/home/launcher/EditStateChangeReason;)V

    :cond_0
    return-void
.end method
