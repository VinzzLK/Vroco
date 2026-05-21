.class Lcom/msa/sdk/tool/RemoteMethodInvoker$2;
.super Lcom/msa/sdk/tool/ThrowableCaughtRunnable;
.source "RemoteMethodInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/msa/sdk/tool/RemoteMethodInvoker;->unbindService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/msa/sdk/tool/RemoteMethodInvoker;


# direct methods
.method constructor <init>(Lcom/msa/sdk/tool/RemoteMethodInvoker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker$2;->this$0:Lcom/msa/sdk/tool/RemoteMethodInvoker;

    invoke-direct {p0, p2, p3}, Lcom/msa/sdk/tool/ThrowableCaughtRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker$2;->this$0:Lcom/msa/sdk/tool/RemoteMethodInvoker;

    invoke-static {v0}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->access$600(Lcom/msa/sdk/tool/RemoteMethodInvoker;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker$2;->this$0:Lcom/msa/sdk/tool/RemoteMethodInvoker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unbind Service["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker$2;->this$0:Lcom/msa/sdk/tool/RemoteMethodInvoker;

    invoke-static {v1}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->access$700(Lcom/msa/sdk/tool/RemoteMethodInvoker;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker$2;->this$0:Lcom/msa/sdk/tool/RemoteMethodInvoker;

    invoke-static {p0}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->access$200(Lcom/msa/sdk/tool/RemoteMethodInvoker;)Landroid/os/IInterface;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SystemSdk-RemoteMethodInvoker"

    invoke-static {v0, p0}, Lcom/msa/sdk/tool/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
