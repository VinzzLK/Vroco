.class Lcom/msa/sdk/tool/RemoteMethodInvoker$1;
.super Lcom/msa/sdk/tool/ThrowableCaughtRunnable;
.source "RemoteMethodInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/msa/sdk/tool/RemoteMethodInvoker;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/msa/sdk/tool/RemoteMethodInvoker;

.field final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/msa/sdk/tool/RemoteMethodInvoker;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker$1;->this$0:Lcom/msa/sdk/tool/RemoteMethodInvoker;

    iput-object p4, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker$1;->val$service:Landroid/os/IBinder;

    invoke-direct {p0, p2, p3}, Lcom/msa/sdk/tool/ThrowableCaughtRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker$1;->this$0:Lcom/msa/sdk/tool/RemoteMethodInvoker;

    iget-object v1, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker$1;->val$service:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->access$000(Lcom/msa/sdk/tool/RemoteMethodInvoker;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker$1;->this$0:Lcom/msa/sdk/tool/RemoteMethodInvoker;

    invoke-static {v0}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->access$200(Lcom/msa/sdk/tool/RemoteMethodInvoker;)Landroid/os/IInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->access$300(Lcom/msa/sdk/tool/RemoteMethodInvoker;Landroid/os/IInterface;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->access$102(Lcom/msa/sdk/tool/RemoteMethodInvoker;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker$1;->this$0:Lcom/msa/sdk/tool/RemoteMethodInvoker;

    invoke-static {v0}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->access$100(Lcom/msa/sdk/tool/RemoteMethodInvoker;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->access$400(Lcom/msa/sdk/tool/RemoteMethodInvoker;Ljava/lang/Object;)V

    .line 78
    iget-object p0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker$1;->this$0:Lcom/msa/sdk/tool/RemoteMethodInvoker;

    invoke-static {p0}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->access$500(Lcom/msa/sdk/tool/RemoteMethodInvoker;)V

    :cond_0
    return-void
.end method
