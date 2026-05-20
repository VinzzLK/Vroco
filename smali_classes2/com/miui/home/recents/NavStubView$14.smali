.class Lcom/miui/home/recents/NavStubView$14;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 5829
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5832
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/home/recents/NavStubView;->isTouchingSingleRange:Z

    .line 5833
    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$5500(Lcom/miui/home/recents/NavStubView;Z)V

    .line 5834
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidR()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5835
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$5700(Lcom/miui/home/recents/NavStubView;Z)V

    .line 5836
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$5800(Lcom/miui/home/recents/NavStubView;Z)V

    .line 5837
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$5900(Lcom/miui/home/recents/NavStubView;)I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/miui/home/recents/NavStubView;->access$6000(Lcom/miui/home/recents/NavStubView;IZ)V

    .line 5838
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->postFinishSoscRunnable()V

    goto :goto_0

    .line 5841
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->finishSoscDirectly(Z)V

    .line 5842
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$5900(Lcom/miui/home/recents/NavStubView;)I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/miui/home/recents/NavStubView;->access$6000(Lcom/miui/home/recents/NavStubView;IZ)V

    .line 5843
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$6100(Lcom/miui/home/recents/NavStubView;Z)V

    .line 5845
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    const-string v0, "mStartHalfNewTaskRunnable"

    invoke-static {p0, v0}, Lcom/miui/home/recents/NavStubView;->access$6200(Lcom/miui/home/recents/NavStubView;Ljava/lang/String;)V

    return-void
.end method
