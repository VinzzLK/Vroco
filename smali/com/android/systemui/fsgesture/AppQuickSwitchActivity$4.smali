.class Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$4;
.super Ljava/lang/Object;
.source "AppQuickSwitchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$4;->this$0:Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$4;->this$0:Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureLineUtils;->isShowNavigationHandle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 218
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$4;->this$0:Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->access$100(Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->prepare(I)V

    .line 219
    iget-object p0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$4;->this$0:Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;

    invoke-static {p0}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->access$100(Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->startAnimation(I)V

    return-void
.end method
