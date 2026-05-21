.class Lcom/miui/home/recents/NavStubView$2;
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

    .line 415
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 418
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$100(Lcom/miui/home/recents/NavStubView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$200(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/GestureHomeCalculator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->updateTail()V

    .line 423
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$300(Lcom/miui/home/recents/NavStubView;)I

    move-result v0

    const/4 v1, 0x4

    const-wide/16 v2, 0x10

    if-ne v0, v1, :cond_1

    .line 424
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$400(Lcom/miui/home/recents/NavStubView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object v0, v0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    .line 430
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$400(Lcom/miui/home/recents/NavStubView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
