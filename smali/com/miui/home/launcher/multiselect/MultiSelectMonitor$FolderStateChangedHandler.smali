.class Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$FolderStateChangedHandler;
.super Ljava/lang/Object;
.source "MultiSelectMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$FolderStateChangedHandler;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V
    .locals 0

    .line 441
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$FolderStateChangedHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 444
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;->isFromEnterPreview()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;->getMessage()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 445
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;->getMessage()I

    move-result p1

    if-nez p1, :cond_1

    .line 446
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$FolderStateChangedHandler;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$1400(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Z)V

    :cond_1
    return-void
.end method
