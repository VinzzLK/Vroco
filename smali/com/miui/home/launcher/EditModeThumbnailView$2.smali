.class Lcom/miui/home/launcher/EditModeThumbnailView$2;
.super Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;
.source "EditModeThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/EditModeThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/EditModeThumbnailView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/EditModeThumbnailView;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/miui/home/launcher/EditModeThumbnailView$2;->this$0:Lcom/miui/home/launcher/EditModeThumbnailView;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 83
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;->getCurrentEditState()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/EditModeThumbnailView$2;->this$0:Lcom/miui/home/launcher/EditModeThumbnailView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mIsEditMode:Z

    goto :goto_1

    .line 85
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/EditModeThumbnailView$2;->this$0:Lcom/miui/home/launcher/EditModeThumbnailView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mIsEditMode:Z

    :goto_1
    return-void
.end method
