.class Lcom/miui/home/recents/BaseRecentsImpl$10;
.super Landroid/database/ContentObserver;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/BaseRecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/BaseRecentsImpl;


# direct methods
.method public static synthetic $r8$lambda$8grRHIx2vV1WoPAzQjwg_qbh9Cc(Lcom/miui/home/recents/BaseRecentsImpl$10;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl$10;->lambda$onChange$0()V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$10;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic lambda$onChange$0()V
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$10;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$000(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$10;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$000(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$10;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    iget-boolean p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHideGestureLine:Z

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/NavStubView;->setHideGestureLine(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 715
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$10;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$300(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_gesture_line"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/miui/home/recents/BaseRecentsImpl;->mHideGestureLine:Z

    .line 716
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {p1}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl$10$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/BaseRecentsImpl$10$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/BaseRecentsImpl$10;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
