.class Lcom/xiaomi/market/sdk/UpdateAlertDialog$1;
.super Ljava/lang/Object;
.source "UpdateAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/market/sdk/UpdateAlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/market/sdk/UpdateAlertDialog;


# direct methods
.method constructor <init>(Lcom/xiaomi/market/sdk/UpdateAlertDialog;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$1;->this$0:Lcom/xiaomi/market/sdk/UpdateAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$1;->this$0:Lcom/xiaomi/market/sdk/UpdateAlertDialog;

    invoke-static {v0}, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->access$000(Lcom/xiaomi/market/sdk/UpdateAlertDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$1;->this$0:Lcom/xiaomi/market/sdk/UpdateAlertDialog;

    invoke-static {v0}, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->access$000(Lcom/xiaomi/market/sdk/UpdateAlertDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 97
    :cond_0
    iget-object p0, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$1;->this$0:Lcom/xiaomi/market/sdk/UpdateAlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
