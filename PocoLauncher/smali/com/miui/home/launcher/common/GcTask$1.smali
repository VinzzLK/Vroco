.class Lcom/miui/home/launcher/common/GcTask$1;
.super Ljava/lang/Object;
.source "GcTask.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/common/GcTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/common/GcTask;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/common/GcTask;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/miui/home/launcher/common/GcTask$1;->this$0:Lcom/miui/home/launcher/common/GcTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .line 45
    invoke-static {}, Lcom/miui/home/launcher/common/GcTask;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/common/GcTask$1;->this$0:Lcom/miui/home/launcher/common/GcTask;

    invoke-static {v0}, Lcom/miui/home/launcher/common/GcTask;->access$200(Lcom/miui/home/launcher/common/GcTask;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/common/GcTask$1;->this$0:Lcom/miui/home/launcher/common/GcTask;

    invoke-static {p0}, Lcom/miui/home/launcher/common/GcTask;->access$100(Lcom/miui/home/launcher/common/GcTask;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
