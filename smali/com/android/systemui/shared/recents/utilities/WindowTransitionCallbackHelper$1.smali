.class Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper$1;
.super Landroid/window/IWindowContainerTransactionCallback$Stub;
.source "WindowTransitionCallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)V
    .locals 0

    .line 752
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper$1;->this$0:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    invoke-direct {p0}, Landroid/window/IWindowContainerTransactionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "TransitionCallback"

    const-string p2, "Transitions all anim call WindowOrganizer.finishTransition end"

    .line 755
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper$1;->this$0:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->access$100(Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper$1;->this$0:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    invoke-static {p2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->access$000(Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 757
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper$1;->this$0:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    invoke-static {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->access$200(Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)V

    return-void
.end method
