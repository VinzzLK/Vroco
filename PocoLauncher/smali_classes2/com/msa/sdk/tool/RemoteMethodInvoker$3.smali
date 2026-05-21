.class Lcom/msa/sdk/tool/RemoteMethodInvoker$3;
.super Ljava/lang/Object;
.source "RemoteMethodInvoker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/msa/sdk/tool/RemoteMethodInvoker;->trySaveReuseBinder(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/msa/sdk/tool/RemoteMethodInvoker;


# direct methods
.method constructor <init>(Lcom/msa/sdk/tool/RemoteMethodInvoker;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker$3;->this$0:Lcom/msa/sdk/tool/RemoteMethodInvoker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker$3;->this$0:Lcom/msa/sdk/tool/RemoteMethodInvoker;

    invoke-static {v1}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->access$700(Lcom/msa/sdk/tool/RemoteMethodInvoker;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker$3;->this$0:Lcom/msa/sdk/tool/RemoteMethodInvoker;

    invoke-static {v1}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->access$200(Lcom/msa/sdk/tool/RemoteMethodInvoker;)Landroid/os/IInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] died, remove from reusing-map!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemSdk-RemoteMethodInvoker"

    invoke-static {v1, v0}, Lcom/msa/sdk/tool/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->access$800()Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker$3;->this$0:Lcom/msa/sdk/tool/RemoteMethodInvoker;

    invoke-static {p0}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->access$700(Lcom/msa/sdk/tool/RemoteMethodInvoker;)Ljava/lang/Class;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
