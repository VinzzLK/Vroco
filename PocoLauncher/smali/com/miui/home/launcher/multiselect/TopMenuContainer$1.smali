.class Lcom/miui/home/launcher/multiselect/TopMenuContainer$1;
.super Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;
.source "TopMenuContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/multiselect/TopMenuContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/multiselect/TopMenuContainer;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 290
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;->getCurrentEditState()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->access$002(Lcom/miui/home/launcher/multiselect/TopMenuContainer;Z)Z

    goto :goto_1

    .line 292
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->access$002(Lcom/miui/home/launcher/multiselect/TopMenuContainer;Z)Z

    :goto_1
    return-void
.end method
