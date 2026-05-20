.class Lcom/miui/home/launcher/CellLayout$5;
.super Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/CellLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 2395
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$5;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 2398
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;->getCurrentEditState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2399
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;->getLastEditState()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 2400
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$5;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->clearCellBackground()V

    .line 2402
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;->getCurrentEditState()I

    move-result p1

    const/16 v0, 0x13

    if-ne p1, v0, :cond_1

    .line 2403
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout$5;->this$0:Lcom/miui/home/launcher/CellLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 2405
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout$5;->this$0:Lcom/miui/home/launcher/CellLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :goto_0
    return-void
.end method
