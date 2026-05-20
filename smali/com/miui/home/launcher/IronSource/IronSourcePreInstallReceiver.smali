.class public Lcom/miui/home/launcher/IronSource/IronSourcePreInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IronSourcePreInstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p0, "pkg"

    .line 11
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {p0}, Lcom/miui/home/launcher/IronSource/IronSourceManager;->addPackageName(Ljava/lang/String;)V

    return-void
.end method
