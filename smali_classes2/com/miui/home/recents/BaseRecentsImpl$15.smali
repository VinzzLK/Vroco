.class Lcom/miui/home/recents/BaseRecentsImpl$15;
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
.method public static synthetic $r8$lambda$_2iyIgT-vIlT0hyoAKToP90gSgg(Lcom/miui/home/recents/BaseRecentsImpl$15;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl$15;->lambda$onChange$0()V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V
    .locals 0

    .line 909
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$15;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic lambda$onChange$0()V
    .locals 3

    .line 913
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$15;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    .line 914
    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$300(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_gesture_appswitch_feature"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$15;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$2000(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$15;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$2000(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/GestureStubView;->disableQuickSwitch(Z)V

    .line 920
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$15;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$2100(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 921
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$15;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$2100(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/GestureStubView;->disableQuickSwitch(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 912
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl$15$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/BaseRecentsImpl$15$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/BaseRecentsImpl$15;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
