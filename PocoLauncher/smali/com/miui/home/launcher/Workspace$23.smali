.class Lcom/miui/home/launcher/Workspace$23;
.super Lcom/miui/home/launcher/common/messages/FirstScreenLoadFinishedMessageHandler;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Workspace;
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

    .line 4315
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$23;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/messages/FirstScreenLoadFinishedMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFirstScreenLoadFinished()V
    .locals 3

    .line 4318
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$23;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v0}, Lcom/miui/home/launcher/Workspace;->access$1700(Lcom/miui/home/launcher/Workspace;)Ljava/util/List;

    move-result-object v0

    .line 4319
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4320
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$23;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4321
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->forceRequestUpdateGridCells()V

    goto :goto_0

    :cond_1
    return-void
.end method
