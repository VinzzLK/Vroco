.class final Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$1;
.super Ljava/lang/Object;
.source "XiaomiUpdateAgent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->showUpdateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 341
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->openMarketOrArrange()V

    return-void
.end method
