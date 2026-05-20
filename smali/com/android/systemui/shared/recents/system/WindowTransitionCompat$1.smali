.class Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$1;
.super Ljava/lang/Object;
.source "WindowTransitionCompat.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$1;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$1;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$000(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;->onFinishCompleted()V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$1;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$100(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$1;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$100(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;->onFinish()V

    :cond_0
    return-void
.end method
