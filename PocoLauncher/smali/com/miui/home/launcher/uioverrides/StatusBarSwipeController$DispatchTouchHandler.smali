.class Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController$DispatchTouchHandler;
.super Landroid/os/Handler;
.source "StatusBarSwipeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DispatchTouchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;Landroid/os/Looper;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController$DispatchTouchHandler;->this$0:Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;

    .line 81
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 86
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/view/MotionEvent;

    .line 87
    sget-object p1, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->onStatusBarMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "send event to StatusBar, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StatusBarController"

    invoke-static {v0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method
