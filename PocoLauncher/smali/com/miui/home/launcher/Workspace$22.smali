.class Lcom/miui/home/launcher/Workspace$22;
.super Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;
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

    .line 4278
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onLoadingFinished()V
    .locals 6

    .line 4281
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getTransformationType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4282
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4284
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v2, v0}, Lcom/miui/home/launcher/Workspace;->access$1602(Lcom/miui/home/launcher/Workspace;I)I

    goto :goto_0

    .line 4286
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/ScreenView;->setScreenTransitionType(I)I

    .line 4287
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getScreenTransitionType()I

    move-result v2

    invoke-static {v0, v2}, Lcom/miui/home/launcher/Workspace;->access$1602(Lcom/miui/home/launcher/Workspace;I)I

    :goto_0
    const/4 v0, 0x0

    move v2, v0

    .line 4289
    :goto_1
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 4290
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v3

    .line 4291
    iget-object v5, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v5, v3, v4}, Lcom/miui/home/launcher/Workspace;->isDefaultScreen(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4292
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz v1, :cond_2

    .line 4295
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->requestUpdateGridCells()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4298
    :cond_3
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->onCreate()V

    return-void
.end method
