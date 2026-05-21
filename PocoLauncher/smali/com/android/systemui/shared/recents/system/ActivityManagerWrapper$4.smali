.class Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;
.super Landroid/view/IBarFollowAnimationRunner$Stub;
.source "ActivityManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startRecentsActivityHyper(Lcom/android/wm/shell/recents/IRecentTasks;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/content/ContextWrapper;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;Lcom/android/systemui/shared/recents/system/BarFollowAnimationListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

.field final synthetic val$barFollowAnimationListener:Lcom/android/systemui/shared/recents/system/BarFollowAnimationListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;Lcom/android/systemui/shared/recents/system/BarFollowAnimationListener;)V
    .locals 0

    .line 945
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->this$0:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    iput-object p2, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->val$barFollowAnimationListener:Lcom/android/systemui/shared/recents/system/BarFollowAnimationListener;

    invoke-direct {p0}, Landroid/view/IBarFollowAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerBarFollowCallback(Landroid/window/IGestureStateUpdateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 948
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->val$barFollowAnimationListener:Lcom/android/systemui/shared/recents/system/BarFollowAnimationListener;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/system/BarFollowAnimationListener;->onGestureStateUpdateCallback(Landroid/window/IGestureStateUpdateCallback;)V

    return-void
.end method
