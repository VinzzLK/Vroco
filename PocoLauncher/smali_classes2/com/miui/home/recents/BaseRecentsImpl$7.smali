.class Lcom/miui/home/recents/BaseRecentsImpl$7;
.super Ljava/lang/Object;
.source "BaseRecentsImpl.java"

# interfaces
.implements Lcom/miui/home/recents/SpecialFDeviceGestureHelper$FoldedStateCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/BaseRecentsImpl;->initSFDeviceGestureHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/BaseRecentsImpl;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$7;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpand()V
    .locals 2

    const-string v0, "RecentsImpl"

    const-string v1, "SpecialFDeviceGestureHelper#onExpand"

    .line 456
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl$7;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1100(Lcom/miui/home/recents/BaseRecentsImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl$7;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1200(Lcom/miui/home/recents/BaseRecentsImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl$7;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1300(Lcom/miui/home/recents/BaseRecentsImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "navstubview will be added: mSFDeviceGestureHelper onExpand"

    .line 459
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$7;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1400(Lcom/miui/home/recents/BaseRecentsImpl;)V

    .line 461
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$7;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1500(Lcom/miui/home/recents/BaseRecentsImpl;)V

    .line 462
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$7;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity()V

    goto :goto_0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$7;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$700(Lcom/miui/home/recents/BaseRecentsImpl;)V

    .line 465
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$7;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$800(Lcom/miui/home/recents/BaseRecentsImpl;)V

    .line 467
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$7;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->notifyOnExpand()V

    return-void
.end method

.method public onFold()V
    .locals 2

    const-string v0, "RecentsImpl"

    const-string v1, "SpecialFDeviceGestureHelper#onFold"

    .line 444
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$7;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$700(Lcom/miui/home/recents/BaseRecentsImpl;)V

    .line 447
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$7;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$800(Lcom/miui/home/recents/BaseRecentsImpl;)V

    .line 448
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$7;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$900(Lcom/miui/home/recents/BaseRecentsImpl;)V

    .line 450
    sget-object v0, Lcom/miui/home/recents/ScreenPinnedHelper;->INSTANCE:Lcom/miui/home/recents/ScreenPinnedHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/ScreenPinnedHelper;->stopScreenPinning(Z)V

    .line 451
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$7;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1000(Lcom/miui/home/recents/BaseRecentsImpl;)V

    return-void
.end method
