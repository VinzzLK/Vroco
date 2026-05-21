.class public Lcom/xiaomi/market/sdk/AppGlobal;
.super Ljava/lang/Object;
.source "AppGlobal.java"


# static fields
.field public static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 14
    sget-object v0, Lcom/xiaomi/market/sdk/AppGlobal;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/market/sdk/AppGlobal;->sContext:Landroid/content/Context;

    return-void
.end method
